.class Lcom/wareone/tappmt/ShowMe$1;
.super Ljava/lang/Object;
.source "ShowMe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ShowMe;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/ShowMe;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ShowMe;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ShowMe$1;->this$0:Lcom/wareone/tappmt/ShowMe;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wareone/tappmt/ShowMe$1;->this$0:Lcom/wareone/tappmt/ShowMe;

    invoke-virtual {v0}, Lcom/wareone/tappmt/ShowMe;->finish()V

    .line 71
    return-void
.end method
