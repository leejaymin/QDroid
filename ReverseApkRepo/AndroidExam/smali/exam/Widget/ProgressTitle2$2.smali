.class Lexam/Widget/ProgressTitle2$2;
.super Ljava/lang/Object;
.source "ProgressTitle2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Widget/ProgressTitle2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/ProgressTitle2;


# direct methods
.method constructor <init>(Lexam/Widget/ProgressTitle2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/ProgressTitle2$2;->this$0:Lexam/Widget/ProgressTitle2;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 22
    iget-object v0, p0, Lexam/Widget/ProgressTitle2$2;->this$0:Lexam/Widget/ProgressTitle2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexam/Widget/ProgressTitle2;->setProgressBarIndeterminateVisibility(Z)V

    .line 23
    return-void
.end method
