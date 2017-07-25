module Main exposing (..)

import Html exposing (..)


-- import ALL HTML module
-- import Html exposing (text, div) -> only imports text and div functions
--


type Visibility
    = All
    | Active
    | Completed


type alias Task =
    { name : String
    , complete : Bool
    }


buy : Task
buy =
    { name = "Buy milk"
    , complete = True
    }


drink : Task
drink =
    { name = "Drink Coke"
    , complete = False
    }


tasks : List Task
tasks =
    [ buy, drink ]


keep : List Task -> Visibility -> List Task
keep tasks visibility =
    case visibility of
        All ->
            tasks

        Active ->
            List.filter (\task -> not task.complete) tasks

        Completed ->
            List.filter (\task -> task.complete) tasks


viewTasksInList : List Task -> Html msg
viewTasksInList tasks =
    tasks
        |> List.map (\task -> li [] [ text task.name ])
        |> ul []


tasksComponent : String -> List Task -> Html msg
tasksComponent title tasks =
    div
        []
        [ h1 [] [ text title ]
        , viewTasksInList tasks
        ]


main : Html msg
main =
    div []
        [ tasksComponent "All Tasks" (keep tasks All)
        , tasksComponent "Completed Tasks" (keep tasks Completed)
        , tasksComponent "Not Completed Tasks" (keep tasks Active)
        ]



-- h1 []
--             [ text "All Tasks" ]
--         , keep tasks All
--             |> viewTasksInList
--         , h1
--             []
--             [ text "Completed Tasks" ]
--         , keep tasks Completed
--             |> viewTasksInList
--         , h1
--             []
--             [ text "Active Tasks" ]
--         , keep tasks Active
--             |> viewTasksInList
--         ]
