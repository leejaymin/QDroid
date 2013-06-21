.class final Lcom/viewpagerindicator/sample/b;
.super Lcom/viewpagerindicator/sample/c;


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/sample/SampleTabsDefault;


# direct methods
.method public constructor <init>(Lcom/viewpagerindicator/sample/SampleTabsDefault;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/sample/b;->a:Lcom/viewpagerindicator/sample/SampleTabsDefault;

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/sample/c;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    invoke-static {}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->access$0()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Limoblife/toolbox/full/ui/ab;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Limoblife/toolbox/full/ui/ax;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Limoblife/toolbox/full/ui/by;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->access$0()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->access$0()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
