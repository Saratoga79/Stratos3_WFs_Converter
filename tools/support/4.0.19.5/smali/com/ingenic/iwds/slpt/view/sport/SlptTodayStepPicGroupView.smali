.class public Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;
.source "SlptTodayStepPicGroupView.java"


# instance fields
.field private groupSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;-><init>()V

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->groupSize:I

    .line 34
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->newPictureGroup()V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;-><init>()V

    .line 28
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->groupSize:I

    .line 29
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->newPictureGroup()V

    .line 30
    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->groupSize:I

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 49
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->SVIEW_PICTURE_GROUP_STEP:S

    return v0
.end method

.method public setGroupSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->groupSize:I

    .line 39
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->newPictureGroup()V

    .line 40
    return-void
.end method
