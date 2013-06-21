.class Lexam/Input/LogTest$1;
.super Ljava/lang/Object;
.source "LogTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/LogTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Input/LogTest;


# direct methods
.method constructor <init>(Lexam/Input/LogTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Input/LogTest$1;->this$0:Lexam/Input/LogTest;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 34
    :pswitch_0
    const-string v0, "LogTest"

    const-string v1, "First Button Pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :pswitch_1
    const-string v0, "LogTest"

    const-string v1, "Second Button Pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x7f0c000d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
