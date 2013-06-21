.class public Limoblife/startupmanager/ExitDialog;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showExitWindows(Landroid/app/Activity;)V
    .locals 7

    new-instance v5, Landroid/app/Dialog;

    const v0, 0x103000b

    invoke-direct {v5, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$drawable;->eixt_bg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Limoblife/startupmanager/R$layout;->exitmenu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget v0, Limoblife/startupmanager/R$id;->exit_txt:I

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Limoblife/startupmanager/R$id;->moreapp_txt:I

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Limoblife/startupmanager/R$id;->lin_Memory:I

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sget v3, Limoblife/startupmanager/R$id;->lin_startup:I

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sget v4, Limoblife/startupmanager/R$id;->lin_batterysaver:I

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v6, Limoblife/startupmanager/e;

    invoke-direct {v6, p0, p1}, Limoblife/startupmanager/e;-><init>(Limoblife/startupmanager/ExitDialog;Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Limoblife/startupmanager/f;

    invoke-direct {v2, p0, p1}, Limoblife/startupmanager/f;-><init>(Limoblife/startupmanager/ExitDialog;Landroid/app/Activity;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Limoblife/startupmanager/g;

    invoke-direct {v2, p0, p1}, Limoblife/startupmanager/g;-><init>(Limoblife/startupmanager/ExitDialog;Landroid/app/Activity;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Limoblife/startupmanager/h;

    invoke-direct {v2, p0, v5, p1}, Limoblife/startupmanager/h;-><init>(Limoblife/startupmanager/ExitDialog;Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Limoblife/startupmanager/i;

    invoke-direct {v0, p0, v5, p1}, Limoblife/startupmanager/i;-><init>(Limoblife/startupmanager/ExitDialog;Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12c

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
