.class Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;
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
    iput-object p1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 365
    if-eqz p2, :cond_0

    .line 366
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 367
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    iget-object v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 368
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    const/4 v2, 0x2

    iput v2, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->holsteredNotificationType:I

    .line 369
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    invoke-virtual {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->saveSettings()V

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddy;

    #getter for: Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;
    invoke-static {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->access$2(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)Lcom/peteguhl/holsterbuddy/AVRSInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/peteguhl/holsterbuddy/AVRSInterface;->refreshSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method