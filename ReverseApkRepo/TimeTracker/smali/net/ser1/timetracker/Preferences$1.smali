.class Lnet/ser1/timetracker/Preferences$1;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Preferences;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ser1/timetracker/Preferences;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Preferences$1;->this$0:Lnet/ser1/timetracker/Preferences;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "iface"
    .parameter "whichChoice"

    .prologue
    .line 213
    iget-object v1, p0, Lnet/ser1/timetracker/Preferences$1;->this$0:Lnet/ser1/timetracker/Preferences;

    #getter for: Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;
    invoke-static {v1}, Lnet/ser1/timetracker/Preferences;->access$0(Lnet/ser1/timetracker/Preferences;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 214
    .local v0, startDay:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "current"

    sget-object v2, Lnet/ser1/timetracker/Preferences;->DAYS_OF_WEEK:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "current-value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lnet/ser1/timetracker/Preferences$1;->this$0:Lnet/ser1/timetracker/Preferences;

    #getter for: Lnet/ser1/timetracker/Preferences;->adapter:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lnet/ser1/timetracker/Preferences;->access$1(Lnet/ser1/timetracker/Preferences;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 217
    iget-object v1, p0, Lnet/ser1/timetracker/Preferences$1;->this$0:Lnet/ser1/timetracker/Preferences;

    invoke-virtual {v1}, Lnet/ser1/timetracker/Preferences;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 218
    return-void
.end method
