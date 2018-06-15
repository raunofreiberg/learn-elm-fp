module RealWorld exposing (..)

import Html exposing (Html, div, text, program, h1, p, button)
import Html.Events exposing (onClick)

init : ( Model, Cmd Msg)
init = ( initialModel, Cmd.none )

type alias Model =
    {
        people: List Person
    }

initialModel : Model
initialModel =
    {
        people = [ Person "1" "Rauno" ]
    }

type alias Person =
    { 
        id : String,
        name : String
    }

type Msg = AddPerson String

view : Model -> Html Msg
view model = 
    div [] 
        [
            div [] (List.map renderPerson model.people),
            button [ onClick (AddPerson "asd") ] [ text "+" ]
        ]
        

renderPerson : Person -> Html Msg
renderPerson person =
    div []
        [
            h1 [] [ text ("Id: " ++ person.id) ],
            p [] [ text ("Name: " ++ person.name) ]
        ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = 
    case msg of
        AddPerson name ->
            (
                {
                    people = Person "2" name :: model.people
                },
                Cmd.none
            )

main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }