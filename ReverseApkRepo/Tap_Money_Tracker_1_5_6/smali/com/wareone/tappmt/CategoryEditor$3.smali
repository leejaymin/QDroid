.class Lcom/wareone/tappmt/CategoryEditor$3;
.super Ljava/lang/Object;
.source "CategoryEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/CategoryEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/CategoryEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/CategoryEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/CategoryEditor$3;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wareone/tappmt/CategoryEditor$3;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    invoke-virtual {v0}, Lcom/wareone/tappmt/CategoryEditor;->finish()V

    .line 104
    return-void
.end method
