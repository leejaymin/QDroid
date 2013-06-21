.class public Lcom/jaynux/app/SaveInformationActivity;
.super Landroid/app/Activity;
.source "SaveInformationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaynux/app/SaveInformationActivity$ContactListItemAdapter;,
        Lcom/jaynux/app/SaveInformationActivity$ContactListItemCache;
    }
.end annotation


# instance fields
.field final DISTANCE:I

.field final PARTICIPATION:I

.field final RACETIME:I

.field final TITLE:I

.field final WIN:I

.field final _ID:I

.field mAdapter:Lcom/jaynux/app/SaveInformationActivity$ContactListItemAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCondition:Landroid/database/Cursor;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mMyList:Landroid/widget/ListView;

.field private mSaveDatabases:Lcom/jaynux/app/provider/SaveDatabases;

.field pOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/jaynux/app/SaveInformationActivity;->_ID:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/jaynux/app/SaveInformationActivity;->TITLE:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/jaynux/app/SaveInformationActivity;->PARTICIPATION:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/jaynux/app/SaveInformationActivity;->WIN:I

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lcom/jaynux/app/SaveInformationActivity;->DISTANCE:I

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/jaynux/app/SaveInformationActivity;->RACETIME:I

    .line 48
    new-instance v0, Lcom/jaynux/app/SaveInformationActivity$1;

    invoke-direct {v0, p0}, Lcom/jaynux/app/SaveInformationActivity$1;-><init>(Lcom/jaynux/app/SaveInformationActivity;)V

    iput-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->pOnClickListener:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SaveInformationActivity;->setContentView(I)V

    .line 39
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SaveInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mMyList:Landroid/widget/ListView;

    .line 40
    new-instance v0, Lcom/jaynux/app/provider/SaveDatabases;

    invoke-direct {v0, p0}, Lcom/jaynux/app/provider/SaveDatabases;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mSaveDatabases:Lcom/jaynux/app/provider/SaveDatabases;

    .line 41
    iget-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mSaveDatabases:Lcom/jaynux/app/provider/SaveDatabases;

    invoke-virtual {v0}, Lcom/jaynux/app/provider/SaveDatabases;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    iget-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id, title, participation, win, distance, racetime from notes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mCursor:Landroid/database/Cursor;

    .line 45
    new-instance v0, Lcom/jaynux/app/SaveInformationActivity$ContactListItemAdapter;

    const v1, 0x7f030006

    iget-object v2, p0, Lcom/jaynux/app/SaveInformationActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/jaynux/app/SaveInformationActivity$ContactListItemAdapter;-><init>(Lcom/jaynux/app/SaveInformationActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mAdapter:Lcom/jaynux/app/SaveInformationActivity$ContactListItemAdapter;

    .line 46
    iget-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mMyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jaynux/app/SaveInformationActivity;->mAdapter:Lcom/jaynux/app/SaveInformationActivity$ContactListItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/jaynux/app/SaveInformationActivity;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 109
    return-void
.end method
