.class final Lcom/b2bstudio/digger/splash$2;
.super Ljava/lang/Object;
.source "splash.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b2bstudio/digger/splash;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b2bstudio/digger/splash;


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/splash;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b2bstudio/digger/splash$2;->this$0:Lcom/b2bstudio/digger/splash;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/b2bstudio/digger/splash$2;->this$0:Lcom/b2bstudio/digger/splash;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/splash;->finish()V

    .line 65
    return-void
.end method
