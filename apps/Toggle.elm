import Html exposing (Html, button, div, text, beginnerProgram)
import Html.Events exposing (onClick)

type alias Model = Bool
model : Bool
model = False

type Action = Toggle

view : Model -> Html Action
view model =
    div []
        [
            button [ onClick Toggle ] [ text "Toggle" ],
            if model then text "True" else text "False"
        ]

update : Action -> Model -> Model
update msg model =
    case msg of
        Toggle ->
            not model

main : Program Never Model Action
main =
    beginnerProgram 
    { 
        model = model,
        view = view,
        update = update
    }