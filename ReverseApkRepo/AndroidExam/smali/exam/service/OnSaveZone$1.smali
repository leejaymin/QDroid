.class Lexam/service/OnSaveZone$1;
.super Landroid/content/BroadcastReceiver;
.source "OnSaveZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/service/OnSaveZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/OnSaveZone;


# direct methods
.method constructor <init>(Lexam/service/OnSaveZone;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/OnSaveZone$1;->this$0:Lexam/service/OnSaveZone;

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    const-string v0, "\uc544\uc2f8! \uacf5\uc9dc\ub2e4."

    .line 30
    const/4 v1, 0x1

    .line 29
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method
