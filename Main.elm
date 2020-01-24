module Main exposing (..)


import Html.App as App
import Time exposing (second, every)

import Model exposing (model)
import Update exposing (update)
import View exposing (view)



init = (model, Cmd.none)


messageSubscription : Chat -> Sub Msg
messageSubscription _ =
  every (5 * second) (always PollMessages)


main : Program Never
main =
  App.program
    { init = init, update = update, view = view, subscriptions = messageSubscription }
