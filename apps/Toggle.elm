import Html exposing (Html, button, div, text, program)
import Html.Events exposing (onClick)

-- You can think of Model as if it were local state in a React component
type alias Model = Bool
init : ( Model, Cmd Msg )
init = ( False, Cmd.none )

-- Sort of like an action in Redux
type Msg = Toggle

-- View is like the render method in a React component
view : Model -> Html Msg
view model =
    div []
        [
            button [ onClick Toggle ] [ text "Toggle" ],
            if model then text "True" else text "False"
        ]

-- Reducer
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Toggle ->
            ( not model, Cmd.none )

main : Program Never Model Msg
main =
    program 
    { 
        init = init, 
        view = view,
        update = update,
        subscriptions = always Sub.none
    }