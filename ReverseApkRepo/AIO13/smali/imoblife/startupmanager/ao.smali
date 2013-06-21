.class final Limoblife/startupmanager/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/am;


# direct methods
.method constructor <init>(Limoblife/startupmanager/am;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ao;->a:Limoblife/startupmanager/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Limoblife/startupmanager/ao;->a:Limoblife/startupmanager/am;

    invoke-static {v0}, Limoblife/startupmanager/am;->a(Limoblife/startupmanager/am;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v2

    if-nez p2, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/ao;->a:Limoblife/startupmanager/am;

    invoke-static {v0}, Limoblife/startupmanager/am;->a(Limoblife/startupmanager/am;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v0

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->userAppList:Ljava/util/List;
    invoke-static {v0}, Limoblife/startupmanager/ZCustomizeActivity;->access$5(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_1

    sget v0, Limoblife/startupmanager/R$string;->customize_user:I

    :goto_1
    invoke-virtual {v2, v1, v0}, Limoblife/startupmanager/ZCustomizeActivity;->showList(Ljava/util/List;I)V

    return-void

    :cond_0
    iget-object v0, p0, Limoblife/startupmanager/ao;->a:Limoblife/startupmanager/am;

    invoke-static {v0}, Limoblife/startupmanager/am;->a(Limoblife/startupmanager/am;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v0

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->systemAppList:Ljava/util/List;
    invoke-static {v0}, Limoblife/startupmanager/ZCustomizeActivity;->access$6(Limoblife/startupmanager/ZCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget v0, Limoblife/startupmanager/R$string;->customize_system:I

    goto :goto_1
.end method
