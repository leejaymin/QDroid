.class Lcom/bero/sdrescan/main$5;
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

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lcom/bero/sdrescan/main;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bero/sdrescan/main$5;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/bero/sdrescan/main$5;->val$activity:Lcom/bero/sdrescan/main;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bero/sdrescan/main$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eula.accepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    iget-object v0, p0, Lcom/bero/sdrescan/main$5;->val$activity:Lcom/bero/sdrescan/main;

    invoke-virtual {v0}, Lcom/bero/sdrescan/main;->Start()V

    .line 163
    return-void
.end method
