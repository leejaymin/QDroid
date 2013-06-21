.class Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EntryList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dakkhin/android/bhadram/EntryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/EntryList;


# direct methods
.method public constructor <init>(Lcom/dakkhin/android/bhadram/EntryList;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    .line 113
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "v"
    .parameter "ctx"
    .parameter "c"

    .prologue
    .line 118
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    .local v0, text1:Landroid/widget/TextView;
    const v2, 0x1020015

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    .local v1, text2:Landroid/widget/TextView;
    const-string v2, "TITLE"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const-string v2, "DESC"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
