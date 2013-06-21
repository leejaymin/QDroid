.class public Lcom/superdroid/sqd/data/CheckBoxStatusData;
.super Ljava/lang/Object;
.source "CheckBoxStatusData.java"


# instance fields
.field public _id:I

.field public _isChecked:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/superdroid/sqd/data/CheckBoxStatusData;->_isChecked:Z

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/superdroid/sqd/data/CheckBoxStatusData;->_id:I

    .line 9
    iput p1, p0, Lcom/superdroid/sqd/data/CheckBoxStatusData;->_id:I

    .line 10
    return-void
.end method
