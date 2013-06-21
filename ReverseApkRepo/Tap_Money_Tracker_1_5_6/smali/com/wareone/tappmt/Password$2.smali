.class Lcom/wareone/tappmt/Password$2;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Password;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Password;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Password;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Password$2;->this$0:Lcom/wareone/tappmt/Password;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wareone/tappmt/Password$2;->this$0:Lcom/wareone/tappmt/Password;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Password;->setResult(I)V

    .line 165
    iget-object v0, p0, Lcom/wareone/tappmt/Password$2;->this$0:Lcom/wareone/tappmt/Password;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Password;->finish()V

    .line 166
    return-void
.end method
