.class Lorg/connectbot/GeneratePubkeyActivity$1;
.super Landroid/os/Handler;
.source "GeneratePubkeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/GeneratePubkeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/GeneratePubkeyActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/GeneratePubkeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/GeneratePubkeyActivity$1;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    .line 240
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 243
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$1;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$0(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 244
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$1;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    invoke-virtual {v0}, Lorg/connectbot/GeneratePubkeyActivity;->finish()V

    .line 245
    return-void
.end method
