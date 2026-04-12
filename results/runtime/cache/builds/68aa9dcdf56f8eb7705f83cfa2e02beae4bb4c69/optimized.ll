; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwqxcdp86.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %3 = mul nuw i64 %1, %1
  %vla = alloca i32, i64 %3, align 16
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx88 = getelementptr inbounds nuw i32, ptr %vla, i64 %1
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %arrayidx88, i64 4
  %5 = add i32 %4, -1
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.end136, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc140, %for.end136 ]
  %exitcond129.not = icmp eq i32 %k.0, %smax
  br i1 %exitcond129.not, label %for.end141, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc10 ], [ 0, %for.cond ]
  %exitcond69.not = icmp eq i64 %indvars.iv65, %7
  br i1 %exitcond69.not, label %for.cond13, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond1
  %8 = mul nuw nsw i64 %indvars.iv65, %1
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %7
  br i1 %exitcond.not, label %for.inc10, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond1, !llvm.loop !12

for.cond13.loopexit:                              ; preds = %for.cond112
  %add = add nsw i32 %18, %total.0
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, -1
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, -1
  br label %for.cond13, !llvm.loop !13

for.cond13:                                       ; preds = %for.cond1, %for.cond13.loopexit
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.cond13.loopexit ], [ %7, %for.cond1 ]
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %for.cond13.loopexit ], [ %6, %for.cond1 ]
  %total.0 = phi i32 [ %add, %for.cond13.loopexit ], [ 0, %for.cond1 ]
  %cmp14 = icmp sgt i64 %indvars.iv124, 1
  br i1 %cmp14, label %for.cond16, label %for.end136

for.cond16:                                       ; preds = %for.cond13, %for.end46
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.end46 ], [ 0, %for.cond13 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %indvars.iv124
  br i1 %exitcond84.not, label %for.cond50, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %9 = mul nuw nsw i64 %indvars.iv80, %1
  %arrayidx20 = getelementptr inbounds nuw i32, ptr %vla, i64 %9
  %10 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.body18
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body24 ], [ 1, %for.body18 ]
  %temp.0 = phi i32 [ %spec.select, %for.body24 ], [ %10, %for.body18 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %indvars.iv124
  br i1 %exitcond74.not, label %for.cond37, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw i32, ptr %arrayidx20, i64 %indvars.iv70
  %11 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %11, i32 %temp.0)
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond22, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond22, %for.body39
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body39 ], [ 0, %for.cond22 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %indvars.iv124
  br i1 %exitcond79.not, label %for.end46, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw i32, ptr %arrayidx20, i64 %indvars.iv75
  %12 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %temp.0
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond37, !llvm.loop !15

for.end46:                                        ; preds = %for.cond37
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond16, !llvm.loop !16

for.cond50:                                       ; preds = %for.cond16, %for.end84
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.end84 ], [ 0, %for.cond16 ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %indvars.iv124
  br i1 %exitcond99.not, label %for.end87, label %for.body52

for.body52:                                       ; preds = %for.cond50
  %arrayidx56 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv95
  %13 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.cond57

for.cond57:                                       ; preds = %for.body59, %for.body52
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body59 ], [ 1, %for.body52 ]
  %temp53.0 = phi i32 [ %spec.select56, %for.body59 ], [ %13, %for.body52 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %indvars.iv124
  br i1 %exitcond89.not, label %for.cond74, label %for.body59

for.body59:                                       ; preds = %for.cond57
  %14 = mul nuw nsw i64 %indvars.iv85, %1
  %gep = getelementptr inbounds nuw i32, ptr %arrayidx56, i64 %14
  %15 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select56 = call i32 @llvm.smin.i32(i32 %15, i32 %temp53.0)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond57, !llvm.loop !17

for.cond74:                                       ; preds = %for.cond57, %for.body76
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body76 ], [ 0, %for.cond57 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %indvars.iv124
  br i1 %exitcond94.not, label %for.end84, label %for.body76

for.body76:                                       ; preds = %for.cond74
  %16 = mul nuw nsw i64 %indvars.iv90, %1
  %gep59 = getelementptr inbounds nuw i32, ptr %arrayidx56, i64 %16
  %17 = load i32, ptr %gep59, align 4, !tbaa !5
  %sub81 = sub nsw i32 %17, %temp53.0
  store i32 %sub81, ptr %gep59, align 4, !tbaa !5
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond74, !llvm.loop !18

for.end84:                                        ; preds = %for.cond74
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond50, !llvm.loop !19

for.end87:                                        ; preds = %for.cond50
  %18 = load i32, ptr %arrayidx89, align 4, !tbaa !5
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc109, %for.end87
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.inc109 ], [ 0, %for.end87 ]
  %exitcond111.not = icmp eq i64 %indvars.iv107, %indvars.iv124
  br i1 %exitcond111.not, label %for.cond112, label %for.cond93.preheader

for.cond93.preheader:                             ; preds = %for.cond90
  %19 = mul nuw nsw i64 %indvars.iv107, %1
  %arrayidx98 = getelementptr inbounds nuw i32, ptr %vla, i64 %19
  br label %for.cond93

for.cond93:                                       ; preds = %for.cond93.preheader, %for.body96
  %indvars.iv100 = phi i64 [ 1, %for.cond93.preheader ], [ %indvars.iv.next101, %for.body96 ]
  %exitcond106.not = icmp eq i64 %indvars.iv100, %indvars.iv122
  br i1 %exitcond106.not, label %for.inc109, label %for.body96

for.body96:                                       ; preds = %for.cond93
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %arrayidx101 = getelementptr inbounds nuw i32, ptr %arrayidx98, i64 %indvars.iv.next101
  %20 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %arrayidx105 = getelementptr inbounds nuw i32, ptr %arrayidx98, i64 %indvars.iv100
  store i32 %20, ptr %arrayidx105, align 4, !tbaa !5
  br label %for.cond93, !llvm.loop !20

for.inc109:                                       ; preds = %for.cond93
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %for.cond90, !llvm.loop !21

for.cond112:                                      ; preds = %for.cond90, %for.inc132
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.inc132 ], [ 0, %for.cond90 ]
  %exitcond121.not = icmp eq i64 %indvars.iv117, %indvars.iv122
  br i1 %exitcond121.not, label %for.cond13.loopexit, label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %for.cond112
  %invariant.gep60 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv117
  br label %for.cond116

for.cond116:                                      ; preds = %for.cond116.preheader, %for.body119
  %indvars.iv112 = phi i64 [ 1, %for.cond116.preheader ], [ %indvars.iv.next113, %for.body119 ]
  %exitcond116.not = icmp eq i64 %indvars.iv112, %indvars.iv122
  br i1 %exitcond116.not, label %for.inc132, label %for.body119

for.body119:                                      ; preds = %for.cond116
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %21 = mul nuw nsw i64 %indvars.iv.next113, %1
  %gep61 = getelementptr inbounds nuw i32, ptr %invariant.gep60, i64 %21
  %22 = load i32, ptr %gep61, align 4, !tbaa !5
  %23 = mul nuw nsw i64 %indvars.iv112, %1
  %gep63 = getelementptr inbounds nuw i32, ptr %invariant.gep60, i64 %23
  store i32 %22, ptr %gep63, align 4, !tbaa !5
  br label %for.cond116, !llvm.loop !22

for.inc132:                                       ; preds = %for.cond116
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond112, !llvm.loop !23

for.end136:                                       ; preds = %for.cond13
  store i32 1, ptr %n, align 4, !tbaa !5
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %total.0)
  %vtable.i = load ptr, ptr %call137, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call137, i64 %vbase.offset.i
  %call.i57 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call137, i8 noundef signext %call.i57)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc140 = add nuw i32 %k.0, 1
  br label %for.cond, !llvm.loop !26

for.end141:                                       ; preds = %for.cond
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !10, !11}
