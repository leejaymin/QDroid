.class Lcom/bero/sdrescan/main$6;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bero/sdrescan/main;->showEula(Lcom/bero/sdrescan/main;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Lcom/bero/sdrescan/main;


# direct methods
.method constructor <init>(Lcom/bero/sdrescan/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bero/sdrescan/main$6;->val$activity:Lcom/bero/sdrescan/main;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bero/sdrescan/main$6;->val$activity:Lcom/bero/sdrescan/main;

    invoke-virtual {v0}, Lcom/bero/sdrescan/main;->finish()V

    .line 168
    return-void
.end method
