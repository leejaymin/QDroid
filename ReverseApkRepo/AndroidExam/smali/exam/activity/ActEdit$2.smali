.class Lexam/activity/ActEdit$2;
.super Ljava/lang/Object;
.source "ActEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/activity/ActEdit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/ActEdit;


# direct methods
.method constructor <init>(Lexam/activity/ActEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/activity/ActEdit$2;->this$0:Lexam/activity/ActEdit;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 35
    iget-object v0, p0, Lexam/activity/ActEdit$2;->this$0:Lexam/activity/ActEdit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexam/activity/ActEdit;->setResult(I)V

    .line 36
    iget-object v0, p0, Lexam/activity/ActEdit$2;->this$0:Lexam/activity/ActEdit;

    invoke-virtual {v0}, Lexam/activity/ActEdit;->finish()V

    .line 37
    return-void
.end method
