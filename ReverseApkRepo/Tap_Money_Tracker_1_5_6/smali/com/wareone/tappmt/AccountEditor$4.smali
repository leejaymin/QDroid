.class Lcom/wareone/tappmt/AccountEditor$4;
.super Ljava/lang/Object;
.source "AccountEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/AccountEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/AccountEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/AccountEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/AccountEditor$4;->this$0:Lcom/wareone/tappmt/AccountEditor;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wareone/tappmt/AccountEditor$4;->this$0:Lcom/wareone/tappmt/AccountEditor;

    invoke-virtual {v0}, Lcom/wareone/tappmt/AccountEditor;->finish()V

    .line 114
    return-void
.end method
