.class Lexam/Output/MessageBeep$1;
.super Ljava/lang/Object;
.source "MessageBeep.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/MessageBeep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/MessageBeep;


# direct methods
.method constructor <init>(Lexam/Output/MessageBeep;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Output/MessageBeep$1;->this$0:Lexam/Output/MessageBeep;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v1, p0, Lexam/Output/MessageBeep$1;->this$0:Lexam/Output/MessageBeep;

    const v2, 0x7f050003

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 34
    .local v0, player:Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 37
    .end local v0           #player:Landroid/media/MediaPlayer;
    :pswitch_1
    iget-object v1, p0, Lexam/Output/MessageBeep$1;->this$0:Lexam/Output/MessageBeep;

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 38
    .restart local v0       #player:Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 41
    .end local v0           #player:Landroid/media/MediaPlayer;
    :pswitch_2
    iget-object v1, p0, Lexam/Output/MessageBeep$1;->this$0:Lexam/Output/MessageBeep;

    iget-object v1, v1, Lexam/Output/MessageBeep;->DingDong:Lexam/Output/Beeper;

    invoke-virtual {v1}, Lexam/Output/Beeper;->play()V

    goto :goto_0

    .line 44
    :pswitch_3
    iget-object v1, p0, Lexam/Output/MessageBeep$1;->this$0:Lexam/Output/MessageBeep;

    iget-object v1, v1, Lexam/Output/MessageBeep;->Ddock:Lexam/Output/Beeper;

    invoke-virtual {v1}, Lexam/Output/Beeper;->play()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x7f0c0056
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
