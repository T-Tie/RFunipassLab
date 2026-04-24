; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9wrtt962.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %add.ptr117 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc180, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.inc180 ]
  %p.0 = phi i32 [ 0, %entry ], [ %inc181, %for.inc180 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %p.0, %0
  br i1 %cmp, label %for.cond1, label %for.end182

for.cond1:                                        ; preds = %for.cond, %for.inc11
  %1 = phi i32 [ %7, %for.inc11 ], [ %0, %for.cond ]
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.inc11 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv74, %2
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %3 = load i32, ptr %add.ptr117, align 4
  %4 = add i32 %1, -1
  %5 = zext i32 %4 to i64
  %6 = zext i32 %1 to i64
  br label %for.cond14

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv74
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc
  %7 = phi i32 [ %1, %for.cond4.preheader ], [ %.pre, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %8 = sext i32 %7 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %8
  br i1 %cmp5, label %for.inc, label %for.inc11

for.inc:                                          ; preds = %for.cond4
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc176
  %indvars.iv131 = phi i64 [ %6, %for.cond14.preheader ], [ %indvars.iv.next132, %for.inc176 ]
  %indvars.iv128 = phi i64 [ %5, %for.cond14.preheader ], [ %indvars.iv.next129, %for.inc176 ]
  %min.1 = phi i32 [ %min.0, %for.cond14.preheader ], [ %min.6, %for.inc176 ]
  %sum.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.inc176 ]
  %9 = trunc nuw i64 %indvars.iv131 to i32
  %cmp15 = icmp sgt i32 %9, 1
  br i1 %cmp15, label %for.cond17, label %for.inc180

for.cond17:                                       ; preds = %for.cond14, %for.inc61
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc61 ], [ 0, %for.cond14 ]
  %min.2 = phi i32 [ %min.3, %for.inc61 ], [ %min.1, %for.cond14 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %indvars.iv131
  br i1 %exitcond89.not, label %for.cond64, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond17
  %10 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv85
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv77 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next78, %for.body22 ]
  %min.3 = phi i32 [ %min.2, %for.cond20.preheader ], [ %min.4, %for.body22 ]
  %exitcond.not = icmp eq i64 %indvars.iv77, %indvars.iv131
  br i1 %exitcond.not, label %for.cond45.preheader, label %for.body22

for.cond45.preheader:                             ; preds = %for.cond20
  br label %for.cond45

for.body22:                                       ; preds = %for.cond20
  %cmp23 = icmp eq i64 %indvars.iv77, 0
  %11 = getelementptr inbounds nuw i32, ptr %10, i64 %indvars.iv77
  %12 = load i32, ptr %11, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %12, i32 %min.3)
  %min.4 = select i1 %cmp23, i32 %12, i32 %spec.select
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond20, !llvm.loop !14

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc58
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc58 ], [ 0, %for.cond45.preheader ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %indvars.iv131
  br i1 %exitcond84.not, label %for.inc61, label %for.inc58

for.inc58:                                        ; preds = %for.cond45
  %add.ptr52 = getelementptr inbounds nuw i32, ptr %10, i64 %indvars.iv80
  %13 = load i32, ptr %add.ptr52, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %13, %min.3
  store i32 %sub, ptr %add.ptr52, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond45, !llvm.loop !15

for.inc61:                                        ; preds = %for.cond45
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond17, !llvm.loop !16

for.cond64:                                       ; preds = %for.cond17, %for.inc112
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc112 ], [ 0, %for.cond17 ]
  %min.6 = phi i32 [ %min.7, %for.inc112 ], [ %min.2, %for.cond17 ]
  %exitcond104.not = icmp eq i64 %indvars.iv100, %indvars.iv131
  br i1 %exitcond104.not, label %for.cond118.preheader, label %for.cond67.preheader

for.cond118.preheader:                            ; preds = %for.cond64
  br label %for.cond118

for.cond67.preheader:                             ; preds = %for.cond64
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv100
  br label %for.cond67

for.cond67:                                       ; preds = %for.cond67.preheader, %for.body69
  %indvars.iv90 = phi i64 [ 0, %for.cond67.preheader ], [ %indvars.iv.next91, %for.body69 ]
  %min.7 = phi i32 [ %min.6, %for.cond67.preheader ], [ %min.8, %for.body69 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %indvars.iv131
  br i1 %exitcond94.not, label %for.cond95.preheader, label %for.body69

for.cond95.preheader:                             ; preds = %for.cond67
  br label %for.cond95

for.body69:                                       ; preds = %for.cond67
  %cmp70 = icmp eq i64 %indvars.iv90, 0
  %gep = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv90
  %14 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %spec.select68 = call i32 @llvm.smin.i32(i32 %14, i32 %min.7)
  %min.8 = select i1 %cmp70, i32 %14, i32 %spec.select68
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond67, !llvm.loop !17

for.cond95:                                       ; preds = %for.cond95.preheader, %for.inc109
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc109 ], [ 0, %for.cond95.preheader ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %indvars.iv131
  br i1 %exitcond99.not, label %for.inc112, label %for.inc109

for.inc109:                                       ; preds = %for.cond95
  %gep70 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv95
  %15 = load i32, ptr %gep70, align 4, !tbaa !5, !invariant.load !13
  %sub103 = sub nsw i32 %15, %min.7
  store i32 %sub103, ptr %gep70, align 4, !tbaa !5
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond95, !llvm.loop !18

for.inc112:                                       ; preds = %for.cond95
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond64, !llvm.loop !19

for.cond118:                                      ; preds = %for.cond118.preheader, %for.inc131
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc131 ], [ 1, %for.cond118.preheader ]
  %exitcond112.not = icmp eq i64 %indvars.iv105, %indvars.iv128
  br i1 %exitcond112.not, label %for.cond134, label %for.inc131

for.inc131:                                       ; preds = %for.cond118
  %add.ptr125 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv105
  %add.ptr126 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 4
  %16 = load i32, ptr %add.ptr126, align 4, !tbaa !5, !invariant.load !13
  store i32 %16, ptr %add.ptr125, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond118, !llvm.loop !20

for.cond134:                                      ; preds = %for.cond118, %for.inc147
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.inc147 ], [ 1, %for.cond118 ]
  %exitcond117.not = icmp eq i64 %indvars.iv113, %indvars.iv128
  br i1 %exitcond117.not, label %for.cond150, label %for.inc147

for.inc147:                                       ; preds = %for.cond134
  %add.ptr139 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv113
  %add.ptr140 = getelementptr inbounds nuw i8, ptr %add.ptr139, i64 400
  %17 = load i32, ptr %add.ptr140, align 4, !tbaa !5, !invariant.load !13
  store i32 %17, ptr %add.ptr139, align 4, !tbaa !5
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond134, !llvm.loop !21

for.cond150:                                      ; preds = %for.cond134, %for.inc173
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.inc173 ], [ 1, %for.cond134 ]
  %exitcond127.not = icmp eq i64 %indvars.iv123, %indvars.iv128
  br i1 %exitcond127.not, label %for.inc176, label %for.cond154.preheader

for.cond154.preheader:                            ; preds = %for.cond150
  %add.ptr159 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv123
  %invariant.gep71 = getelementptr inbounds nuw i8, ptr %add.ptr159, i64 404
  br label %for.cond154

for.cond154:                                      ; preds = %for.cond154.preheader, %for.inc170
  %indvars.iv118 = phi i64 [ 1, %for.cond154.preheader ], [ %indvars.iv.next119, %for.inc170 ]
  %exitcond122.not = icmp eq i64 %indvars.iv118, %indvars.iv128
  br i1 %exitcond122.not, label %for.inc173, label %for.inc170

for.inc170:                                       ; preds = %for.cond154
  %gep72 = getelementptr inbounds nuw i32, ptr %invariant.gep71, i64 %indvars.iv118
  %18 = load i32, ptr %gep72, align 4, !tbaa !5, !invariant.load !13
  %add.ptr169 = getelementptr inbounds nuw i32, ptr %add.ptr159, i64 %indvars.iv118
  store i32 %18, ptr %add.ptr169, align 4, !tbaa !5
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond154, !llvm.loop !22

for.inc173:                                       ; preds = %for.cond154
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond150, !llvm.loop !23

for.inc176:                                       ; preds = %for.cond150
  %add = add nsw i32 %sum.0, %3
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, -1
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, -1
  br label %for.cond14, !llvm.loop !24

for.inc180:                                       ; preds = %for.cond14
  %call178 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call179 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call178, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc181 = add nuw nsw i32 %p.0, 1
  br label %for.cond, !llvm.loop !25

for.end182:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = !{}
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
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
