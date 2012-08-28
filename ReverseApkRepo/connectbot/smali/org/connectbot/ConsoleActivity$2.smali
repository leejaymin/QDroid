.class Lorg/connectbot/ConsoleActivity$2;
.super Landroid/os/Handler;
.source "ConsoleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/ConsoleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/ConsoleActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$2;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 189
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 193
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity$2;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v0}, Lorg/connectbot/ConsoleActivity;->updatePromptVisible()V

    .line 194
    return-void
.end method
