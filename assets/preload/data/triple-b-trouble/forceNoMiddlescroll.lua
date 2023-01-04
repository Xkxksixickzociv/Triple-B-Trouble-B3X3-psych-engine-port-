local keepScroll
function onCreate()
  if middlescroll then
    keepScroll = true
    setPropertyFromClass('ClientPrefs', 'middleScroll', false)
  else
    keepScroll = false
  end
end

function onDestroy()
  if keepScroll == true then
    setPropertyFromClass('ClientPrefs', 'middleScroll', true)
  end
end