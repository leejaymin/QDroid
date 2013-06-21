.class final Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;
.super Ljava/lang/Object;
.source "TiJSErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiJSErrorDialog;->openErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$line:I

.field final synthetic val$lineOffset:I

.field final synthetic val$lineSource:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$sourceName:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Semaphore;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$message:Ljava/lang/String;

    iput-object p5, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$sourceName:Ljava/lang/String;

    iput p6, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$line:I

    iput-object p7, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$lineSource:Ljava/lang/String;

    iput p8, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$lineOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 54
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$message:Ljava/lang/String;

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$sourceName:Ljava/lang/String;

    iget v5, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$line:I

    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$lineSource:Ljava/lang/String;

    iget v7, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;->val$lineOffset:I

    invoke-static/range {v0 .. v7}, Lorg/appcelerator/titanium/util/TiJSErrorDialog;->createDialog(Ljava/util/concurrent/Semaphore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 55
    return-void
.end method
