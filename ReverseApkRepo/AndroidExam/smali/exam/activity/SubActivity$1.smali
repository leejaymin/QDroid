.class Lexam/activity/SubActivity$1;
.super Ljava/lang/Object;
.source "SubActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/activity/SubActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/SubActivity;


# direct methods
.method constructor <init>(Lexam/activity/SubActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/activity/SubActivity$1;->this$0:Lexam/activity/SubActivity;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 17
    iget-object v0, p0, Lexam/activity/SubActivity$1;->this$0:Lexam/activity/SubActivity;

    invoke-virtual {v0}, Lexam/activity/SubActivity;->finish()V

    .line 18
    return-void
.end method
