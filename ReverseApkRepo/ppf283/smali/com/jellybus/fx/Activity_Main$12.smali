.class Lcom/jellybus/fx/Activity_Main$12;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$12;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 2206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2209
    packed-switch p2, :pswitch_data_0

    .line 2217
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2211
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$12;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    goto :goto_0

    .line 2214
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$12;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    goto :goto_0

    .line 2209
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
