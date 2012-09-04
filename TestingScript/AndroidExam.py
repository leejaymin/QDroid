import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
device.startActivity(component="exam.AndroidExam.AndroidExam")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.TextViewTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.ImageViewTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.ButtonEdit")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Horizontal")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Horizontal2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Horizontal3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Gravity1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Gravity2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Gravity3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Gravity4")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.lGravity1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.lGravity2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.lGravity3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.lGravity4")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Base1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Base2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Weight1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Weight2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Weight3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Padding1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Padding2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Padding3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Relative1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.NameCard")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Absolute")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Frame")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Table")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.NestLayout")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.MultiPage")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.CodeLayout")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.CodeLayout2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Inflation")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Inflation2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Inflation3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.Inflation4")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.LayoutParameter")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.LayoutParameter2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.MarginParameter")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Layout.MarginParameter2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.CustomView")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.Primitive1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.Primitive2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.AntiAlias")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.PaintTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.DrawBitmap")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.DrawText")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.TypeFace")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.CustomFont")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.DrawPath")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.ToastTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.MessageBeep")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Output.SoundPoolTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.HandleEvent")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.HandlerOrder")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.HandlerAccess")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.MoveCircle")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.FreeLine")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.Fruit")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.FocusTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.FocusTest2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.Timer")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.OptionMenu")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.OptionMenu2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.MenuCheck")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.ContextMenuTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.MemoryPower")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.MemoryPower2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Input.LogTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ReadResource")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ReadResource2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.StyleTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ThemeTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.SystemTheme")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.LandPort")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.TextViewAttr")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.EditableTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.SpannableTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.TextChange")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.EditLimit")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.EditSelect")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.InputType")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ShowHideKey")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.AdjustKey1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.AdjustKey2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.NoNinePatch")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.NinePatch")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.RadioTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ArrowButton")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ImageButtonTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ListTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ListFromArray")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ListAttr")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ListAddDel")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ListIconText")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ListOfViews")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ListOnly")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.SpinnerTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.GridTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.GalleryTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ProgressBarTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ProgressTitle")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ProgressTitle2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.SeekBarTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.Rating")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.SoundEdit")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.NumEdit")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.Attribute")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.SoundEdit2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.Measuring")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.RainbowTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.ScrollViewTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.HScrollViewTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Widget.WebViewTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.FileIO")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.ShareFile")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.SDCard")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.TextLogTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.PrefTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.PrefActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.EnglishWord")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.ProductList")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Data.CallWordCP")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.CallActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.SubActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.CallOther")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.CommActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.ActEdit")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.SaveState")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.SaveState2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.SaveState3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.SaveCurve")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.SaveCurve2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.SaveCurve3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.TabTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.TabTest2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.TabTest3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.activity.CustomTab")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.DialogTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.DialogButton")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.Cancelable")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.ShowDialog")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.ErrorMessage1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.ErrorMessage2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.Question1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.Question2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.SelectDialog1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.SelectDialog2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.SelectDialog3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.OrderDialog")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.dialog.PopupTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.ThreadTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.HandlerTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.LooperTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.Upload")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.Post")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.ANR")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.ANR2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.LongTime")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.LongTime2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.LongTime3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.LongTime4")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.LongTime5")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.BackWork")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.BackWork2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.thread.BackWork3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.LinearGrad")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.RadialGrad")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.SweepGrad")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.BitmapSdr")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ComposeSdr")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ShapeTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.BlurFlt")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.EmbossFlt")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ColorFlt")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ColorM")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.GrayScale")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Porter")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.DashPathEft")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.CornerPathEft")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.PathDashEft")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.DashAnim")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Xfer")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Dither")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Translate")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Translate2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.SaveCanvas")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Skew")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Scale")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.TransOrder")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Rotate")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.FrameAni")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Tween")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.TweenListener")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Reflection")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.Reflection2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ReDraw1")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ReDraw2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ReDraw3")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ReDraw4")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Draw.ReDraw5")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.ConMgr")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.DownHtml")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.AsyncDownHtml")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.DownImage")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.WebService")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.DomParser")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.DomParser2")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.SaxParser")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.PullParser")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.JSONArrayTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.Network.JSONObjectTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.NapAlarm")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.NapEnd")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.CustomNotiView")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.DetectFree")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.DetectSaveZone")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.OnSaveZone")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.WatchBattery")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.WatchSdcard")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.AlarmTest")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.NewsController")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.service.CalcClient")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.external.NewsController")
MonkeyRunner.sleep(1.0)
device.startActivity(component="exam.AndroidExamexam.external.CalcClient")
MonkeyRunner.sleep(1.0)
