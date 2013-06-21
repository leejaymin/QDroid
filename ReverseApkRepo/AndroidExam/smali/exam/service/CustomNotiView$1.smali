.class Lexam/service/CustomNotiView$1;
.super Ljava/lang/Object;
.source "CustomNotiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/CustomNotiView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/CustomNotiView;


# direct methods
.method constructor <init>(Lexam/service/CustomNotiView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/CustomNotiView$1;->this$0:Lexam/service/CustomNotiView;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lexam/service/CustomNotiView$1;)Lexam/service/CustomNotiView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lexam/service/CustomNotiView$1;->this$0:Lexam/service/CustomNotiView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 23
    iget-object v0, p0, Lexam/service/CustomNotiView$1;->this$0:Lexam/service/CustomNotiView;

    const-string v1, "\uc548\ub155\ud788 \uc8fc\ubb34\uc138\uc694"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 24
    new-instance v0, Lexam/service/CustomNotiView$1$1;

    invoke-direct {v0, p0}, Lexam/service/CustomNotiView$1$1;-><init>(Lexam/service/CustomNotiView$1;)V

    .line 43
    const-wide/16 v1, 0x1388

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method
