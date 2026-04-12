; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz565ecju.cpp"
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
  %n0 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %temp = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n0) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(40000) %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %temp) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  %arrayidx110 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.end192, %entry
  %z.0 = phi i32 [ 0, %entry ], [ %inc13.i44, %for.end192 ]
  %0 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %z.0, %0
  br i1 %cmp, label %for.cond1, label %for.end197

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %4, %for.end ], [ %0, %for.cond ]
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv58, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv58, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n0, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond1

for.cond15:                                       ; preds = %for.cond15.preheader, %for.end190
  %indvars.iv126 = phi i64 [ %3, %for.cond15.preheader ], [ %indvars.iv.next127, %for.end190 ]
  %s.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.end190 ]
  %6 = trunc nuw i64 %indvars.iv126 to i32
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.cond19, label %for.end192

for.cond19:                                       ; preds = %for.cond15, %for.end55
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.end55 ], [ 0, %for.cond15 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %indvars.iv126
  br i1 %exitcond74.not, label %for.cond60, label %if.end.peel

if.end.peel:                                      ; preds = %for.cond19
  %arrayidx29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv70
  %7 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond23

for.cond23:                                       ; preds = %if.end.peel, %if.end
  %indvars.iv61 = phi i64 [ 1, %if.end.peel ], [ %indvars.iv.next62, %if.end ]
  %min.3 = phi i32 [ %7, %if.end.peel ], [ %spec.select, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv61, %indvars.iv126
  br i1 %exitcond.not, label %for.cond45.preheader, label %if.end

for.cond45.preheader:                             ; preds = %for.cond23
  br label %for.cond45

if.end:                                           ; preds = %for.cond23
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv61
  %8 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !12
  %spec.select = call i32 @llvm.smin.i32(i32 %min.3, i32 %8)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond23, !llvm.loop !13

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc53
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc53 ], [ 0, %for.cond45.preheader ]
  %exitcond69.not = icmp eq i64 %indvars.iv65, %indvars.iv126
  br i1 %exitcond69.not, label %for.end55, label %for.inc53

for.inc53:                                        ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv65
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %9, %min.3
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond45, !llvm.loop !15

for.end55:                                        ; preds = %for.cond45
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond19

for.cond60:                                       ; preds = %for.cond19, %for.end105
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.end105 ], [ 0, %for.cond19 ]
  %exitcond90.not = icmp eq i64 %indvars.iv86, %indvars.iv126
  br i1 %exitcond90.not, label %for.end108, label %if.end89.peel

if.end89.peel:                                    ; preds = %for.cond60
  %arrayidx74 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv86
  %10 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond65

for.cond65:                                       ; preds = %if.end89.peel, %if.end89
  %indvars.iv75 = phi i64 [ 1, %if.end89.peel ], [ %indvars.iv.next76, %if.end89 ]
  %min.6 = phi i32 [ %10, %if.end89.peel ], [ %spec.select56, %if.end89 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %indvars.iv126
  br i1 %exitcond79.not, label %for.cond94.preheader, label %if.end89

for.cond94.preheader:                             ; preds = %for.cond65
  br label %for.cond94

if.end89:                                         ; preds = %for.cond65
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv75, i64 %indvars.iv86
  %11 = load i32, ptr %arrayidx79, align 4, !tbaa !5, !invariant.load !12
  %spec.select56 = call i32 @llvm.smin.i32(i32 %min.6, i32 %11)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond65, !llvm.loop !16

for.cond94:                                       ; preds = %for.cond94.preheader, %for.inc103
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc103 ], [ 0, %for.cond94.preheader ]
  %exitcond85.not = icmp eq i64 %indvars.iv81, %indvars.iv126
  br i1 %exitcond85.not, label %for.end105, label %for.inc103

for.inc103:                                       ; preds = %for.cond94
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv81, i64 %indvars.iv86
  %12 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !12
  %sub102 = sub nsw i32 %12, %min.6
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond94, !llvm.loop !17

for.end105:                                       ; preds = %for.cond94
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond60

for.end108:                                       ; preds = %for.cond60
  %13 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.end131, %for.end108
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.end131 ], [ 0, %for.end108 ]
  %exitcond100.not = icmp eq i64 %indvars.iv96, %indvars.iv126
  br i1 %exitcond100.not, label %for.cond136, label %for.cond117

for.cond117:                                      ; preds = %for.cond112, %for.inc129
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc129 ], [ 0, %for.cond112 ]
  %exitcond95.not = icmp eq i64 %indvars.iv91, %indvars.iv126
  br i1 %exitcond95.not, label %for.end131, label %for.inc129

for.inc129:                                       ; preds = %for.cond117
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv96, i64 %indvars.iv91
  %14 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx128 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv96, i64 %indvars.iv91
  store i32 %14, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond117, !llvm.loop !18

for.end131:                                       ; preds = %for.cond117
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond112

for.cond136:                                      ; preds = %for.cond112, %for.body139
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.body139 ], [ 2, %for.cond112 ]
  %exitcond106.not = icmp eq i64 %indvars.iv101, %indvars.iv126
  br i1 %exitcond106.not, label %for.cond151, label %for.body139

for.body139:                                      ; preds = %for.cond136
  %arrayidx141 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv101
  %15 = load i32, ptr %arrayidx141, align 16, !tbaa !5
  %16 = add nsw i64 %indvars.iv101, -1
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %16
  store i32 %15, ptr %arrayidx145, align 16, !tbaa !5
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond136

for.cond151:                                      ; preds = %for.cond136, %for.body154
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body154 ], [ 2, %for.cond136 ]
  %exitcond112.not = icmp eq i64 %indvars.iv107, %indvars.iv126
  br i1 %exitcond112.not, label %for.cond166, label %for.body154

for.body154:                                      ; preds = %for.cond151
  %arrayidx157 = getelementptr inbounds nuw [100 x i32], ptr %temp, i64 0, i64 %indvars.iv107
  %17 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %18 = add nsw i64 %indvars.iv107, -1
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %18
  store i32 %17, ptr %arrayidx161, align 4, !tbaa !5
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %for.cond151

for.cond166:                                      ; preds = %for.cond151, %for.inc188
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc188 ], [ 2, %for.cond151 ]
  %exitcond124.not = icmp eq i64 %indvars.iv119, %indvars.iv126
  br i1 %exitcond124.not, label %for.end190, label %for.cond171.preheader

for.cond171.preheader:                            ; preds = %for.cond166
  %19 = add nsw i64 %indvars.iv119, -1
  br label %for.cond171

for.cond171:                                      ; preds = %for.cond171.preheader, %for.inc185
  %indvars.iv113 = phi i64 [ 2, %for.cond171.preheader ], [ %indvars.iv.next114, %for.inc185 ]
  %exitcond118.not = icmp eq i64 %indvars.iv113, %indvars.iv126
  br i1 %exitcond118.not, label %for.inc188, label %for.inc185

for.inc185:                                       ; preds = %for.cond171
  %arrayidx178 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv119, i64 %indvars.iv113
  %20 = load i32, ptr %arrayidx178, align 4, !tbaa !5
  %21 = add nsw i64 %indvars.iv113, -1
  %arrayidx184 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %19, i64 %21
  store i32 %20, ptr %arrayidx184, align 4, !tbaa !5
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond171, !llvm.loop !19

for.inc188:                                       ; preds = %for.cond171
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond166, !llvm.loop !20

for.end190:                                       ; preds = %for.cond166
  %add = add nsw i32 %13, %s.0
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1
  br label %for.cond15

for.end192:                                       ; preds = %for.cond15
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc13.i44 = add nuw nsw i32 %z.0, 1
  br label %for.cond

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n0) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind }

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
!12 = !{}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
