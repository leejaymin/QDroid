.class Lnet/ser1/timetracker/Tasks$3;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks;->openChangeViewDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ser1/timetracker/Tasks;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Tasks;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/ser1/timetracker/Tasks$3;)Lnet/ser1/timetracker/Tasks;
    .locals 1
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x5

    .line 450
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lnet/ser1/timetracker/Tasks;->access$2(Lnet/ser1/timetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 451
    .local v7, ed:Landroid/content/SharedPreferences$Editor;
    const-string v0, "view_mode"

    invoke-interface {v7, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 453
    if-ne p2, v5, :cond_0

    .line 454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 455
    .local v6, calInstance:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;

    .line 456
    new-instance v2, Lnet/ser1/timetracker/Tasks$3$1;

    invoke-direct {v2, p0}, Lnet/ser1/timetracker/Tasks$3$1;-><init>(Lnet/ser1/timetracker/Tasks$3;)V

    .line 496
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 497
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 498
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 455
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 498
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 502
    .end local v6           #calInstance:Ljava/util/Calendar;
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;

    #calls: Lnet/ser1/timetracker/Tasks;->switchView(I)V
    invoke-static {v0, p2}, Lnet/ser1/timetracker/Tasks;->access$13(Lnet/ser1/timetracker/Tasks;I)V

    goto :goto_0
.end method
