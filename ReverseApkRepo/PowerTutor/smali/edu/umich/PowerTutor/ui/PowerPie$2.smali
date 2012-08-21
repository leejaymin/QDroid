.class Ledu/umich/PowerTutor/ui/PowerPie$2;
.super Ljava/lang/Object;
.source "PowerPie.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/PowerPie;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerPie;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerPie;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerPie$2;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 286
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie$2;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/PowerPie;->access$7(Ledu/umich/PowerTutor/ui/PowerPie;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pieWindowType"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie$2;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/PowerPie;->updateDisplayText()V

    .line 288
    return-void
.end method
