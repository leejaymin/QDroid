.class Lcom/bero/sdrescan/main$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bero/sdrescan/main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bero/sdrescan/main;


# direct methods
.method constructor <init>(Lcom/bero/sdrescan/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bero/sdrescan/main$2;->this$0:Lcom/bero/sdrescan/main;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bero/sdrescan/main$2;->this$0:Lcom/bero/sdrescan/main;

    invoke-virtual {v0}, Lcom/bero/sdrescan/main;->finish()V

    .line 53
    return-void
.end method
