.class public Lcom/google/devtools/simple/runtime/components/android/TableLayout;
.super Ljava/lang/Object;
.source "TableLayout.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/Layout;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final layoutManager:Landroid/widget/TableLayout;

.field private numColumns:I

.field private numRows:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "numColumns"
    .parameter "numRows"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v3, Landroid/widget/TableLayout;

    invoke-direct {v3, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    .line 38
    iput p2, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    .line 39
    iput p3, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    .line 40
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->handler:Landroid/os/Handler;

    .line 42
    const/4 v1, 0x0

    .local v1, row:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 43
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, tableRow:Landroid/widget/TableRow;
    const/4 v0, 0x0

    .local v0, col:I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v3, v2, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0           #col:I
    .end local v2           #tableRow:Landroid/widget/TableRow;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/TableLayout;Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->addChild(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    return-void
.end method

.method private addChild(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 7
    .parameter "child"

    .prologue
    const/4 v4, -0x1

    const-string v6, "TableLayout"

    .line 128
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->Row()I

    move-result v2

    .line 129
    .local v2, row:I
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->Column()I

    move-result v1

    .line 130
    .local v1, col:I
    if-eq v2, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->addChildLater(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_1
    if-ltz v2, :cond_3

    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    if-ge v2, v4, :cond_3

    .line 137
    if-ltz v1, :cond_2

    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    if-ge v1, v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 139
    .local v3, tableRow:Landroid/widget/TableRow;
    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->removeViewAt(I)V

    .line 140
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, cellView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 143
    .end local v0           #cellView:Landroid/view/View;
    .end local v3           #tableRow:Landroid/widget/TableRow;
    :cond_2
    const-string v4, "TableLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child has illegal Column property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_3
    const-string v4, "TableLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child has illegal Row property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addChildLater(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/TableLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TableLayout$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/TableLayout;Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method private static newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method private static newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private newEmptyCellView()Landroid/view/View;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->addChildLater(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 114
    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    return-object v0
.end method

.method getNumColumns()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    return v0
.end method

.method getNumRows()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    return v0
.end method

.method setNumColumns(I)V
    .locals 6
    .parameter "newNumColumns"

    .prologue
    .line 56
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    if-le p1, v4, :cond_3

    .line 58
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, row:I
    :goto_0
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    if-ge v2, v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 61
    .local v3, tableRow:Landroid/widget/TableRow;
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    .local v0, col:I
    :goto_1
    if-ge v0, p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0           #col:I
    .end local v3           #tableRow:Landroid/widget/TableRow;
    :cond_1
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    .line 75
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #row:I
    :cond_2
    :goto_2
    return-void

    .line 67
    :cond_3
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    if-ge p1, v4, :cond_2

    .line 69
    const/4 v2, 0x0

    .restart local v2       #row:I
    :goto_3
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    if-ge v2, v4, :cond_4

    .line 70
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 71
    .restart local v3       #tableRow:Landroid/widget/TableRow;
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    sub-int/2addr v4, p1

    invoke-virtual {v3, p1, v4}, Landroid/widget/TableRow;->removeViews(II)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 73
    .end local v3           #tableRow:Landroid/widget/TableRow;
    :cond_4
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    goto :goto_2
.end method

.method setNumRows(I)V
    .locals 6
    .parameter "newNumRows"

    .prologue
    .line 82
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    if-le p1, v4, :cond_3

    .line 84
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, context:Landroid/content/Context;
    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    .local v2, row:I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 86
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 87
    .local v3, tableRow:Landroid/widget/TableRow;
    const/4 v0, 0x0

    .local v0, col:I
    :goto_1
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numColumns:I

    if-ge v0, v4, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v4, v3, v2, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v0           #col:I
    .end local v3           #tableRow:Landroid/widget/TableRow;
    :cond_1
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    .line 98
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #row:I
    :cond_2
    :goto_2
    return-void

    .line 93
    :cond_3
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    if-ge p1, v4, :cond_2

    .line 95
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    iget v5, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    sub-int/2addr v5, p1

    invoke-virtual {v4, p1, v5}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 96
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->numRows:I

    goto :goto_2
.end method
