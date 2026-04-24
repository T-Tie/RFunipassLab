; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkodtl3k_.cpp"
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
  %min1 = alloca [100 x i32], align 16
  %min2 = alloca [100 x i32], align 16
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %min1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %min2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx120 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count75 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %q.0 = phi i32 [ 0, %entry ], [ %inc166, %while.end ]
  %exitcond152.not = icmp eq i32 %q.0, %smax
  br i1 %exitcond152.not, label %for.end167, label %for.body

for.body:                                         ; preds = %for.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.end, %for.body
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.end ], [ 0, %for.body ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %wide.trip.count75
  br i1 %exitcond76.not, label %for.end12, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count75
  br i1 %exitcond.not, label %for.end, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv72, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %.pr to i64
  br label %while.cond

while.cond:                                       ; preds = %for.end162, %for.end12
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %for.end162 ], [ %1, %for.end12 ]
  %d.0 = phi i32 [ %add, %for.end162 ], [ 0, %for.end12 ]
  %2 = trunc nuw i64 %indvars.iv149 to i32
  %cmp13 = icmp sgt i32 %2, 1
  br i1 %cmp13, label %for.cond14, label %while.end

for.cond14:                                       ; preds = %while.cond, %for.body16
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.body16 ], [ 0, %while.cond ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %indvars.iv149
  br i1 %exitcond81.not, label %for.cond22, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv77
  store i32 1000, ptr %arrayidx18, align 4, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond14, !llvm.loop !13

for.cond22:                                       ; preds = %for.cond14, %for.body24
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body24 ], [ 0, %for.cond14 ]
  %exitcond86.not = icmp eq i64 %indvars.iv82, %indvars.iv149
  br i1 %exitcond86.not, label %for.cond30, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv82
  store i32 1000, ptr %arrayidx26, align 4, !tbaa !5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond22, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond22, %for.end51
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.end51 ], [ 0, %for.cond22 ]
  %exitcond96.not = icmp eq i64 %indvars.iv92, %indvars.iv149
  br i1 %exitcond96.not, label %for.cond55, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond30
  %arrayidx37 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv92
  br label %for.cond33

for.cond33:                                       ; preds = %for.cond33.preheader, %for.body35
  %indvars.iv87 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next88, %for.body35 ]
  %exitcond91.not = icmp eq i64 %indvars.iv87, %indvars.iv149
  br i1 %exitcond91.not, label %for.end51, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %3 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !15
  %arrayidx41 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv92, i64 %indvars.iv87
  %4 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !15
  %spec.store.select = call i32 @llvm.smin.i32(i32 %3, i32 %4)
  store i32 %spec.store.select, ptr %arrayidx37, align 4
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond33, !llvm.loop !16

for.end51:                                        ; preds = %for.cond33
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond30, !llvm.loop !17

for.cond55:                                       ; preds = %for.cond30, %for.end69
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.end69 ], [ 0, %for.cond30 ]
  %exitcond106.not = icmp eq i64 %indvars.iv102, %indvars.iv149
  br i1 %exitcond106.not, label %for.cond73, label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %for.cond55
  %arrayidx62 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv102
  br label %for.cond58

for.cond58:                                       ; preds = %for.cond58.preheader, %for.body60
  %indvars.iv97 = phi i64 [ 0, %for.cond58.preheader ], [ %indvars.iv.next98, %for.body60 ]
  %exitcond101.not = icmp eq i64 %indvars.iv97, %indvars.iv149
  br i1 %exitcond101.not, label %for.end69, label %for.body60

for.body60:                                       ; preds = %for.cond58
  %5 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !15
  %arrayidx66 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %indvars.iv97
  %6 = load i32, ptr %arrayidx66, align 4, !tbaa !5, !invariant.load !15
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %arrayidx66, align 4, !tbaa !5
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br label %for.cond58, !llvm.loop !18

for.end69:                                        ; preds = %for.cond58
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %for.cond55, !llvm.loop !19

for.cond73:                                       ; preds = %for.cond55, %for.end96
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.end96 ], [ 0, %for.cond55 ]
  %exitcond116.not = icmp eq i64 %indvars.iv112, %indvars.iv149
  br i1 %exitcond116.not, label %for.cond100, label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %for.cond73
  %arrayidx80 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv112
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %indvars.iv107 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next108, %for.body78 ]
  %exitcond111.not = icmp eq i64 %indvars.iv107, %indvars.iv149
  br i1 %exitcond111.not, label %for.end96, label %for.body78

for.body78:                                       ; preds = %for.cond76
  %7 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !15
  %arrayidx84 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv107, i64 %indvars.iv112
  %8 = load i32, ptr %arrayidx84, align 4, !tbaa !5, !invariant.load !15
  %spec.store.select70 = call i32 @llvm.smin.i32(i32 %7, i32 %8)
  store i32 %spec.store.select70, ptr %arrayidx80, align 4
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %for.cond76, !llvm.loop !20

for.end96:                                        ; preds = %for.cond76
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond73, !llvm.loop !21

for.cond100:                                      ; preds = %for.cond73, %for.end115
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %for.end115 ], [ 0, %for.cond73 ]
  %exitcond126.not = icmp eq i64 %indvars.iv122, %indvars.iv149
  br i1 %exitcond126.not, label %for.end118, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %for.cond100
  %arrayidx107 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv122
  br label %for.cond103

for.cond103:                                      ; preds = %for.cond103.preheader, %for.body105
  %indvars.iv117 = phi i64 [ 0, %for.cond103.preheader ], [ %indvars.iv.next118, %for.body105 ]
  %exitcond121.not = icmp eq i64 %indvars.iv117, %indvars.iv149
  br i1 %exitcond121.not, label %for.end115, label %for.body105

for.body105:                                      ; preds = %for.cond103
  %9 = load i32, ptr %arrayidx107, align 4, !tbaa !5, !invariant.load !15
  %arrayidx111 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv117, i64 %indvars.iv122
  %10 = load i32, ptr %arrayidx111, align 4, !tbaa !5, !invariant.load !15
  %sub112 = sub nsw i32 %10, %9
  store i32 %sub112, ptr %arrayidx111, align 4, !tbaa !5
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond103, !llvm.loop !22

for.end115:                                       ; preds = %for.cond103
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %for.cond100, !llvm.loop !23

for.end118:                                       ; preds = %for.cond100
  %11 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  br label %for.cond121

for.cond121:                                      ; preds = %for.end138, %for.end118
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %for.end138 ], [ 0, %for.end118 ]
  %exitcond137.not = icmp eq i64 %indvars.iv133, %indvars.iv149
  br i1 %exitcond137.not, label %for.cond142, label %for.cond124

for.cond124:                                      ; preds = %for.cond121, %for.body126
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.body126 ], [ 2, %for.cond121 ]
  %exitcond132.not = icmp eq i64 %indvars.iv127, %indvars.iv149
  br i1 %exitcond132.not, label %for.end138, label %for.body126

for.body126:                                      ; preds = %for.cond124
  %arrayidx130 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv127, i64 %indvars.iv133
  %12 = load i32, ptr %arrayidx130, align 4, !tbaa !5, !invariant.load !15
  %13 = add nsw i64 %indvars.iv127, -1
  %arrayidx135 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %13, i64 %indvars.iv133
  store i32 %12, ptr %arrayidx135, align 4, !tbaa !5
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %for.cond124, !llvm.loop !24

for.end138:                                       ; preds = %for.cond124
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  br label %for.cond121, !llvm.loop !25

for.cond142:                                      ; preds = %for.cond121, %for.end159
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.end159 ], [ 0, %for.cond121 ]
  %exitcond148.not = icmp eq i64 %indvars.iv144, %indvars.iv149
  br i1 %exitcond148.not, label %for.end162, label %for.cond145

for.cond145:                                      ; preds = %for.cond142, %for.body147
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.body147 ], [ 2, %for.cond142 ]
  %exitcond143.not = icmp eq i64 %indvars.iv138, %indvars.iv149
  br i1 %exitcond143.not, label %for.end159, label %for.body147

for.body147:                                      ; preds = %for.cond145
  %arrayidx151 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv144, i64 %indvars.iv138
  %14 = load i32, ptr %arrayidx151, align 4, !tbaa !5
  %15 = add nsw i64 %indvars.iv138, -1
  %arrayidx156 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv144, i64 %15
  store i32 %14, ptr %arrayidx156, align 4, !tbaa !5
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  br label %for.cond145, !llvm.loop !26

for.end159:                                       ; preds = %for.cond145
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  br label %for.cond142, !llvm.loop !27

for.end162:                                       ; preds = %for.cond142
  %add = add nsw i32 %11, %d.0
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, -1
  %indvars = trunc i64 %indvars.iv.next150 to i32
  store i32 %indvars, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  %call163 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.0)
  %call164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call163, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc166 = add nuw i32 %q.0, 1
  br label %for.cond, !llvm.loop !29

for.end167:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %min2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %min1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
