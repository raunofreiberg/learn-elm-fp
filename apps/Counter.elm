import Html exposing (Html, button, div, text, program)
import Html.Events exposing (onClick)

type alias Model = Int

init : ( Model, Cmd Msg )
init = ( 0, Cmd.none )

type Msg = Increment

view : Model -> Html Msg
view model =
    div []
        [
            button [ onClick Increment ] [ text "+" ],
            text (toString model)
        ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            ( model + 1, Cmd.none )


main : Program Never Model Msg
main = 
    program {
        init = init,
        view = view,
        update = update,
        subscriptions = always Sub.none
    }