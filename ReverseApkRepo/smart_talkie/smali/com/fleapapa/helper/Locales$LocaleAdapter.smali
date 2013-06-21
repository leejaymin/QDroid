.class public Lcom/fleapapa/helper/Locales$LocaleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Locales.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/Locales;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocaleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Locales;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/Locales;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    .local p0, this:Lcom/fleapapa/helper/Locales$LocaleAdapter;,"Lcom/fleapapa/helper/Locales$LocaleAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/Locales$LocaleAdapter;->this$0:Lcom/fleapapa/helper/Locales;

    .line 70
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    .local p0, this:Lcom/fleapapa/helper/Locales$LocaleAdapter;,"Lcom/fleapapa/helper/Locales$LocaleAdapter<TT;>;"
    iget-object v3, p0, Lcom/fleapapa/helper/Locales$LocaleAdapter;->this$0:Lcom/fleapapa/helper/Locales;

    iget-object v3, v3, Lcom/fleapapa/helper/Locales;->adapter:Lcom/fleapapa/helper/Locales$LocaleAdapter;

    invoke-virtual {v3, p1}, Lcom/fleapapa/helper/Locales$LocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 74
    .local v1, lc:Ljava/util/Locale;
    iget-object v3, p0, Lcom/fleapapa/helper/Locales$LocaleAdapter;->this$0:Lcom/fleapapa/helper/Locales;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/Locales;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 75
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 76
    .local v2, ll:Landroid/widget/LinearLayout;
    const v3, 0x7f08010a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0           #this:Lcom/fleapapa/helper/Locales$LocaleAdapter;,"Lcom/fleapapa/helper/Locales$LocaleAdapter<TT;>;"
    check-cast p0, Landroid/widget/ImageView;

    sget-object v3, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/fleapapa/helper/Locales;->codeISO(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object v2

    .line 76
    :cond_0
    const/4 v3, 0x4

    goto :goto_0
.end method
