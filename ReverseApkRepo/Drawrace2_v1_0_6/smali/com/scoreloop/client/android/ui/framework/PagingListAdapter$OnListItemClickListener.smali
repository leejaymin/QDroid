.class public interface abstract Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener;
.super Ljava/lang/Object;
.source "PagingListAdapter.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnListItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onPagingListItemClick(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V
.end method
