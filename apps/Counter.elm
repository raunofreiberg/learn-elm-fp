import Html exposing (Html, button, div, text, beginnerProgram)
import Html.Events exposing (onClick)

type alias Model = Int
model : number
model = 0

type Action = Increment | Decrement

view : Model -> Html Action
view model =
    div []
        [
            button [ onClick Increment ] [ text "+" ],
            button [ onClick Decrement ] [ text "-" ],
            text (toString model)
        ]

update : Action -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1
        Decrement ->
            model - 1


main : Program Never Model Action
main = 
    beginnerProgram {
        model = model,
        view = view,
        update = update
    }