.class Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;
.super Ljava/lang/Object;
.source "HolsterBuddy.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/peteguhl/holsterbuddy/HolsterBuddy;->setButtonActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;


# direct methods
.method constructor <init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    if-eqz p2, :cond_0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    #getter for: Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;
    invoke-static {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->access$2(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)Lcom/peteguhl/holsterbuddy/AVRSInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/peteguhl/holsterbuddy/AVRSInterface;->startService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 250
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 251
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 256
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 257
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 259
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iput-boolean v3, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    .line 260
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    invoke-virtual {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->saveSettings()V

    .line 261
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    #calls: Lcom/peteguhl/holsterbuddy/HolsterBuddy;->makeRadioButtonsVisibile()V
    invoke-static {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->access$3(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    .line 288
    :goto_1
    return-void

    .line 243
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    #getter for: Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;
    invoke-static {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->access$2(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)Lcom/peteguhl/holsterbuddy/AVRSInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/peteguhl/holsterbuddy/AVRSInterface;->stopService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_2
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 271
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 272
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 273
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 274
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 276
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 277
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 278
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 280
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 282
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iput-boolean v2, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    .line 283
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    invoke-virtual {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->saveSettings()V

    .line 285
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    #calls: Lcom/peteguhl/holsterbuddy/HolsterBuddy;->makeRadioButtonsInvisibile()V
    invoke-static {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->access$4(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    goto :goto_1

    .line 266
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 268
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
