.class Lcom/superdroid/sqd/About$1;
.super Ljava/lang/Object;
.source "About.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/About;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/About;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/About;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/About$1;->this$0:Lcom/superdroid/sqd/About;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/superdroid/sqd/About$1;->this$0:Lcom/superdroid/sqd/About;

    invoke-virtual {v0}, Lcom/superdroid/sqd/About;->finish()V

    .line 43
    return-void
.end method
