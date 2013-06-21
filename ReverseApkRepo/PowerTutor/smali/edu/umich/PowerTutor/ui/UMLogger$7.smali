.class Ledu/umich/PowerTutor/ui/UMLogger$7;
.super Ljava/lang/Object;
.source "UMLogger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/UMLogger;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/UMLogger;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/UMLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/UMLogger$7;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 231
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$7;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$7(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$7;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->finish()V

    .line 233
    return-void
.end method
