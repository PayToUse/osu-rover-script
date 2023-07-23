local Offset = 210
game.Players.LocalPlayer.PlayerGui.PlayScreen.PlayFrame.ChildAdded:Connect(function(e)
   if e.Name == 'Circle' then
       while wait() do
           if e ~= nil and e:FindFirstChild('HitCircle') and e:FindFirstChild('ApproachCircle') then
               if math.floor(e.ApproachCircle.AbsoluteSize.X) <= Offset then
                   spawn(function()
                       game.Players.LocalPlayer.PlayerGui.PlayScreen.MouseHit:Fire(1)
                       wait()
                       game.Players.LocalPlayer.PlayerGui.PlayScreen.MouseHitEnd:Fire(1)
                       game.Players.LocalPlayer.PlayerGui.PlayScreen.PlayFrame.Cursor.Position = e.Position
                   end)
               end
           end
       end
   end
end)
