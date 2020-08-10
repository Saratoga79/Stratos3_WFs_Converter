.class public Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# static fields
.field public static final BLACK:I = 0x3

.field public static final BROWN:I = 0x2

.field public static final FEMALE:I = 0x0

.field public static final MEAL:I = 0x1

.field public static final NA:I = 0x2

.field public static final WHITE:I = 0x1

.field public static final YELLOW:I


# instance fields
.field private mHasUserAge:Z

.field private mHasUserBodyFatRate:Z

.field private mHasUserExerciseRate:Z

.field private mHasUserHeightMeter:Z

.field private mHasUserIsLeftHandler:Z

.field private mHasUserIsVegnism:Z

.field private mHasUserIsWearOnLeft:Z

.field private mHasUserSex:Z

.field private mHasUserSkin:Z

.field private mHasUserWeightKg:Z

.field private mUserAge:I

.field private mUserBodyFatRate:I

.field private mUserExerciseRate:I

.field private mUserHeightMeter:F

.field private mUserIsLeftHander:Z

.field private mUserIsVeganism:Z

.field private mUserIsWearOnLeft:Z

.field private mUserSex:I

.field private mUserSkin:I

.field private mUserWeightKg:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSex:Z

    .line 1617
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserAge:Z

    .line 1619
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserHeightMeter:Z

    .line 1621
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserWeightKg:Z

    .line 1623
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsWearOnLeft:Z

    .line 1625
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserBodyFatRate:Z

    .line 1627
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserExerciseRate:Z

    .line 1629
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsVegnism:Z

    .line 1631
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSkin:Z

    .line 1633
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsLeftHandler:Z

    .line 1636
    return-void
.end method

.method public constructor <init>(IIFFZIIZIZ)V
    .locals 2
    .param p1, "mUserSex"    # I
    .param p2, "mUserAge"    # I
    .param p3, "mUserHeightMeter"    # F
    .param p4, "mUserWeightKg"    # F
    .param p5, "mUserIsWearOnLeft"    # Z
    .param p6, "mUserBodyFatRate"    # I
    .param p7, "mUserExerciseRate"    # I
    .param p8, "mUserIsVeganism"    # Z
    .param p9, "mUserSkin"    # I
    .param p10, "mUserIsLeftHander"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSex:Z

    .line 1617
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserAge:Z

    .line 1619
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserHeightMeter:Z

    .line 1621
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserWeightKg:Z

    .line 1623
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsWearOnLeft:Z

    .line 1625
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserBodyFatRate:Z

    .line 1627
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserExerciseRate:Z

    .line 1629
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsVegnism:Z

    .line 1631
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSkin:Z

    .line 1633
    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsLeftHandler:Z

    .line 1643
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserSex:I

    .line 1644
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSex:Z

    .line 1645
    iput p2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserAge:I

    .line 1646
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserAge:Z

    .line 1647
    iput p3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserHeightMeter:F

    .line 1648
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserHeightMeter:Z

    .line 1649
    iput p4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserWeightKg:F

    .line 1650
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserWeightKg:Z

    .line 1651
    iput-boolean p5, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsWearOnLeft:Z

    .line 1652
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsWearOnLeft:Z

    .line 1653
    iput p6, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserBodyFatRate:I

    .line 1654
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserBodyFatRate:Z

    .line 1655
    iput p7, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserExerciseRate:I

    .line 1656
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserExerciseRate:Z

    .line 1657
    iput-boolean p8, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsVeganism:Z

    .line 1658
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsVegnism:Z

    .line 1659
    iput p9, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserSkin:I

    .line 1660
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSkin:Z

    .line 1661
    iput-boolean p10, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsLeftHander:Z

    .line 1662
    iput-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsLeftHandler:Z

    .line 1663
    return-void
.end method


# virtual methods
.method public getUserAge()I
    .locals 1

    .prologue
    .line 1720
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserAge:I

    return v0
.end method

.method public getUserBodyFatRate()I
    .locals 1

    .prologue
    .line 1736
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserBodyFatRate:I

    return v0
.end method

.method public getUserExerciseRate()I
    .locals 1

    .prologue
    .line 1740
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserExerciseRate:I

    return v0
.end method

.method public getUserHeightMeter()F
    .locals 1

    .prologue
    .line 1724
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserHeightMeter:F

    return v0
.end method

.method public getUserSex()I
    .locals 1

    .prologue
    .line 1716
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserSex:I

    return v0
.end method

.method public getUserSkin()I
    .locals 1

    .prologue
    .line 1748
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserSkin:I

    return v0
.end method

.method public getUserWeightKg()F
    .locals 1

    .prologue
    .line 1728
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserWeightKg:F

    return v0
.end method

.method public hasUserAge()Z
    .locals 1

    .prologue
    .line 1760
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserAge:Z

    return v0
.end method

.method public hasUserBodyFatRate()Z
    .locals 1

    .prologue
    .line 1776
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserBodyFatRate:Z

    return v0
.end method

.method public hasUserExerciseRate()Z
    .locals 1

    .prologue
    .line 1780
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserExerciseRate:Z

    return v0
.end method

.method public hasUserHeightMeter()Z
    .locals 1

    .prologue
    .line 1764
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserHeightMeter:Z

    return v0
.end method

.method public hasUserIsLeftHandler()Z
    .locals 1

    .prologue
    .line 1792
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsLeftHandler:Z

    return v0
.end method

.method public hasUserIsVegnism()Z
    .locals 1

    .prologue
    .line 1784
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsVegnism:Z

    return v0
.end method

.method public hasUserIsWearOnLeft()Z
    .locals 1

    .prologue
    .line 1772
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsWearOnLeft:Z

    return v0
.end method

.method public hasUserSex()Z
    .locals 1

    .prologue
    .line 1756
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSex:Z

    return v0
.end method

.method public hasUserSkin()Z
    .locals 1

    .prologue
    .line 1788
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSkin:Z

    return v0
.end method

.method public hasUserWeightKg()Z
    .locals 1

    .prologue
    .line 1768
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserWeightKg:Z

    return v0
.end method

.method public isUserLeftHander()Z
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsLeftHander:Z

    return v0
.end method

.method public isUserVeganism()Z
    .locals 1

    .prologue
    .line 1744
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsVeganism:Z

    return v0
.end method

.method public isUserWearOnLeft()Z
    .locals 1

    .prologue
    .line 1732
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsWearOnLeft:Z

    return v0
.end method

.method public setUserAge(I)V
    .locals 1
    .param p1, "mUserAge"    # I

    .prologue
    .line 1671
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserAge:I

    .line 1672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserAge:Z

    .line 1673
    return-void
.end method

.method public setUserBodyFatRate(I)V
    .locals 1
    .param p1, "mUserBodyFatRate"    # I

    .prologue
    .line 1691
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserBodyFatRate:I

    .line 1692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserBodyFatRate:Z

    .line 1693
    return-void
.end method

.method public setUserExerciseRate(I)V
    .locals 1
    .param p1, "mUserExerciseRate"    # I

    .prologue
    .line 1696
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserExerciseRate:I

    .line 1697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserExerciseRate:Z

    .line 1698
    return-void
.end method

.method public setUserHeightMeter(F)V
    .locals 1
    .param p1, "mUserHeightMeter"    # F

    .prologue
    .line 1676
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserHeightMeter:F

    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserHeightMeter:Z

    .line 1678
    return-void
.end method

.method public setUserIsLeftHander(Z)V
    .locals 1
    .param p1, "mUserIsLeftHander"    # Z

    .prologue
    .line 1711
    iput-boolean p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsLeftHander:Z

    .line 1712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsLeftHandler:Z

    .line 1713
    return-void
.end method

.method public setUserIsVeganism(Z)V
    .locals 1
    .param p1, "mUserIsVeganism"    # Z

    .prologue
    .line 1701
    iput-boolean p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsVeganism:Z

    .line 1702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsVegnism:Z

    .line 1703
    return-void
.end method

.method public setUserIsWearOnLeft(Z)V
    .locals 1
    .param p1, "mUserIsWearOnLeft"    # Z

    .prologue
    .line 1686
    iput-boolean p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsWearOnLeft:Z

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsWearOnLeft:Z

    .line 1688
    return-void
.end method

.method public setUserSex(I)V
    .locals 1
    .param p1, "mUserSex"    # I

    .prologue
    .line 1666
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserSex:I

    .line 1667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSex:Z

    .line 1668
    return-void
.end method

.method public setUserSkin(I)V
    .locals 1
    .param p1, "mUserSkin"    # I

    .prologue
    .line 1706
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserSkin:I

    .line 1707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSkin:Z

    .line 1708
    return-void
.end method

.method public setUserWeightKg(F)V
    .locals 1
    .param p1, "mUserWeightKg"    # F

    .prologue
    .line 1681
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserWeightKg:F

    .line 1682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserWeightKg:Z

    .line 1683
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{mUserSex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserSex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserSex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSex:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserAge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserHeightMeter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserHeightMeter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserHeightMeter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserHeightMeter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserWeightKg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserWeightKg:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserWeightKg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserWeightKg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserIsWearOnLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsWearOnLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserIsWearOnLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsWearOnLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserBodyFatRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserBodyFatRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserBodyFatRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserBodyFatRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserExerciseRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserExerciseRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserExerciseRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserExerciseRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserIsVeganism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsVeganism:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserIsVegnism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsVegnism:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserSkin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserSkin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserSkin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserSkin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserIsLeftHander="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mUserIsLeftHander:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasUserIsLeftHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->mHasUserIsLeftHandler:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
