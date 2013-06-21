.class public Lcom/falmarri/futures/QuoteGetterService$MyBinder;
.super Landroid/os/Binder;
.source "QuoteGetterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/falmarri/futures/QuoteGetterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/falmarri/futures/QuoteGetterService;


# direct methods
.method public constructor <init>(Lcom/falmarri/futures/QuoteGetterService;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/falmarri/futures/QuoteGetterService$MyBinder;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/falmarri/futures/QuoteGetterService;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService$MyBinder;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    return-object v0
.end method
