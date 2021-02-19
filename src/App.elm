module App exposing (main, view)

import Browser exposing (element)
import Html exposing (Html, button, div, img, input, text)
import Html.Attributes as Attr exposing (checked, class, classList, disabled, for, href, id, name, rows, src, type_, value)
import Html.Events exposing (onClick)
import Http
import Json.Decode as Decode exposing (Decoder, Value, bool, int, list, maybe, string, succeed)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode exposing (encode)



-- MAIN


main : Program Flags Model Msg
main =
    element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { popup : Bool
    }


type alias Flags =
    {}


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( { popup = False
      }
    , Cmd.none
    )



-- UPDATE


type Msg
    = SeePopup
    | HidePopup


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SeePopup ->
            ( { model | popup = True }, Cmd.none )

        HidePopup ->
            ( { model | popup = False }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view _ =
    div [ class "container" ] [ text "Hello world!" ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.batch
        []
