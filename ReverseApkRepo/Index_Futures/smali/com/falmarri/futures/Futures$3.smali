.class Lcom/falmarri/futures/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/falmarri/futures/Futures;->showPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/falmarri/futures/Futures;


# direct methods
.method constructor <init>(Lcom/falmarri/futures/Futures;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/falmarri/futures/Futures$3;->this$0:Lcom/falmarri/futures/Futures;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/falmarri/futures/Futures$3;->this$0:Lcom/falmarri/futures/Futures;

    iget-object v1, v1, Lcom/falmarri/futures/Futures;->pref:Landroid/content/SharedPreferences;

    .line 239
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/falmarri/futures/Futures;->indices:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method
