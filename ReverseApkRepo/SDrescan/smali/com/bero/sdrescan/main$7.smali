.class Lcom/bero/sdrescan/main$7;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/bero/sdrescan/main$7;->val$activity:Lcom/bero/sdrescan/main;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bero/sdrescan/main$7;->val$activity:Lcom/bero/sdrescan/main;

    invoke-virtual {v0}, Lcom/bero/sdrescan/main;->finish()V

    .line 173
    return-void
.end method
