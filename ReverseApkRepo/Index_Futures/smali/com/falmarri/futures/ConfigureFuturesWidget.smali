.class public Lcom/falmarri/futures/ConfigureFuturesWidget;
.super Landroid/app/Activity;
.source "ConfigureFuturesWidget.java"


# instance fields
.field check:[Z

.field dialog:Landroid/app/AlertDialog;

.field private mAppWidgetId:I

.field shown:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/falmarri/futures/ConfigureFuturesWidget;->shown:Ljava/util/ArrayList;

    .line 19
    sget-object v0, Lcom/falmarri/futures/Futures;->indices:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/falmarri/futures/ConfigureFuturesWidget;->check:[Z

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/falmarri/futures/ConfigureFuturesWidget;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/falmarri/futures/ConfigureFuturesWidget;->mAppWidgetId:I

    return v0
.end method


# virtual methods
.method public addIndexToWidget(Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 0
    .parameter "rv"
    .parameter "index"

    .prologue
    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "onSavedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0, v4}, Lcom/falmarri/futures/ConfigureFuturesWidget;->setVisible(Z)V

    .line 27
    invoke-virtual {p0, v4}, Lcom/falmarri/futures/ConfigureFuturesWidget;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Lcom/falmarri/futures/ConfigureFuturesWidget;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 29
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 30
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 32
    const-string v3, "appWidgetId"

    .line 31
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/falmarri/futures/ConfigureFuturesWidget;->mAppWidgetId:I

    .line 37
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Indices"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 40
    sget-object v4, Lcom/falmarri/futures/Futures;->indices:[Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/falmarri/futures/ConfigureFuturesWidget$1;

    invoke-direct {v6, p0}, Lcom/falmarri/futures/ConfigureFuturesWidget$1;-><init>(Lcom/falmarri/futures/ConfigureFuturesWidget;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 49
    const-string v4, "Cancel"

    new-instance v5, Lcom/falmarri/futures/ConfigureFuturesWidget$2;

    invoke-direct {v5, p0}, Lcom/falmarri/futures/ConfigureFuturesWidget$2;-><init>(Lcom/falmarri/futures/ConfigureFuturesWidget;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 60
    const-string v4, "OK"

    new-instance v5, Lcom/falmarri/futures/ConfigureFuturesWidget$3;

    invoke-direct {v5, p0}, Lcom/falmarri/futures/ConfigureFuturesWidget$3;-><init>(Lcom/falmarri/futures/ConfigureFuturesWidget;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 91
    return-void
.end method
