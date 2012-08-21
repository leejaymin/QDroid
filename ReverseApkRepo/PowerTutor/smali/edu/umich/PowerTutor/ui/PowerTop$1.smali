.class Ledu/umich/PowerTutor/ui/PowerTop$1;
.super Ljava/lang/Object;
.source "PowerTop.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/PowerTop;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerTop;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerTop;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerTop$1;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 182
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$1;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerTop;->access$6(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "topKeyId"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    return-void
.end method
