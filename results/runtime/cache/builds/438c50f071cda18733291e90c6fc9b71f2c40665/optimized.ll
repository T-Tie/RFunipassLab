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

for.cond:                                         ; preds = %for.inc195, %entry
  %z.0 = phi i32 [ 0, %entry ], [ %inc196, %for.inc195 ]
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.inc195 ]
  %0 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %z.0, %0
  br i1 %cmp, label %for.cond1, label %for.end197

for.cond1:                                        ; preds = %for.cond, %for.inc12
  %1 = phi i32 [ %4, %for.inc12 ], [ %0, %for.cond ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc12 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv7, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n0, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond1, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc191
  %indvars.iv73 = phi i64 [ %3, %for.cond15.preheader ], [ %indvars.iv.next74, %for.inc191 ]
  %min.1 = phi i32 [ %min.0, %for.cond15.preheader ], [ %min.5, %for.inc191 ]
  %s.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.inc191 ]
  %6 = trunc nuw i64 %indvars.iv73 to i32
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.cond19, label %for.inc195

for.cond19:                                       ; preds = %for.cond15, %for.inc56
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc56 ], [ 0, %for.cond15 ]
  %min.2 = phi i32 [ %min.3, %for.inc56 ], [ %min.1, %for.cond15 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %indvars.iv73
  br i1 %exitcond22.not, label %for.cond60, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond19
  %arrayidx29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv18
  br label %for.cond23

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc41
  %indvars.iv10 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next11, %for.inc41 ]
  %min.3 = phi i32 [ %min.2, %for.cond23.preheader ], [ %min.4, %for.inc41 ]
  %exitcond.not = icmp eq i64 %indvars.iv10, %indvars.iv73
  br i1 %exitcond.not, label %for.cond45.preheader, label %for.body26

for.cond45.preheader:                             ; preds = %for.cond23
  br label %for.cond45

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i64 %indvars.iv10, 0
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body26
  %7 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !13
  br label %for.inc41

if.else:                                          ; preds = %for.body26
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv18, i64 %indvars.iv10
  %8 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %min.3, i32 %8)
  br label %for.inc41

for.inc41:                                        ; preds = %if.else, %if.then
  %min.4 = phi i32 [ %7, %if.then ], [ %spec.select, %if.else ]
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond23, !llvm.loop !14

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc53
  %indvars.iv13 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next14, %for.inc53 ]
  %exitcond17.not = icmp eq i64 %indvars.iv13, %indvars.iv73
  br i1 %exitcond17.not, label %for.inc56, label %for.inc53

for.inc53:                                        ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv18, i64 %indvars.iv13
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %9, %min.3
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond45, !llvm.loop !15

for.inc56:                                        ; preds = %for.cond45
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond19, !llvm.loop !16

for.cond60:                                       ; preds = %for.cond19, %for.inc106
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc106 ], [ 0, %for.cond19 ]
  %min.5 = phi i32 [ %min.6, %for.inc106 ], [ %min.2, %for.cond19 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %indvars.iv73
  br i1 %exitcond37.not, label %for.end108, label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.cond60
  %arrayidx74 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv33
  br label %for.cond65

for.cond65:                                       ; preds = %for.cond65.preheader, %for.inc90
  %indvars.iv23 = phi i64 [ 0, %for.cond65.preheader ], [ %indvars.iv.next24, %for.inc90 ]
  %min.6 = phi i32 [ %min.5, %for.cond65.preheader ], [ %min.7, %for.inc90 ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %indvars.iv73
  br i1 %exitcond27.not, label %for.cond94.preheader, label %for.body68

for.cond94.preheader:                             ; preds = %for.cond65
  br label %for.cond94

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i64 %indvars.iv23, 0
  br i1 %cmp69, label %if.then70, label %if.else75

if.then70:                                        ; preds = %for.body68
  %10 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !13
  br label %for.inc90

if.else75:                                        ; preds = %for.body68
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv23, i64 %indvars.iv33
  %11 = load i32, ptr %arrayidx79, align 4, !tbaa !5, !invariant.load !13
  %spec.select5 = call i32 @llvm.smin.i32(i32 %min.6, i32 %11)
  br label %for.inc90

for.inc90:                                        ; preds = %if.else75, %if.then70
  %min.7 = phi i32 [ %10, %if.then70 ], [ %spec.select5, %if.else75 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond65, !llvm.loop !17

for.cond94:                                       ; preds = %for.cond94.preheader, %for.inc103
  %indvars.iv28 = phi i64 [ 0, %for.cond94.preheader ], [ %indvars.iv.next29, %for.inc103 ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %indvars.iv73
  br i1 %exitcond32.not, label %for.inc106, label %for.inc103

for.inc103:                                       ; preds = %for.cond94
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv28, i64 %indvars.iv33
  %12 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !13
  %sub102 = sub nsw i32 %12, %min.6
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond94, !llvm.loop !18

for.inc106:                                       ; preds = %for.cond94
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond60, !llvm.loop !19

for.end108:                                       ; preds = %for.cond60
  %13 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc132, %for.end108
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc132 ], [ 0, %for.end108 ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %indvars.iv73
  br i1 %exitcond47.not, label %for.cond136, label %for.cond117

for.cond117:                                      ; preds = %for.cond112, %for.inc129
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc129 ], [ 0, %for.cond112 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %indvars.iv73
  br i1 %exitcond42.not, label %for.inc132, label %for.inc129

for.inc129:                                       ; preds = %for.cond117
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv43, i64 %indvars.iv38
  %14 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !13
  %arrayidx128 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv43, i64 %indvars.iv38
  store i32 %14, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond117, !llvm.loop !20

for.inc132:                                       ; preds = %for.cond117
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond112, !llvm.loop !21

for.cond136:                                      ; preds = %for.cond112, %for.inc147
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc147 ], [ 2, %for.cond112 ]
  %exitcond53.not = icmp eq i64 %indvars.iv48, %indvars.iv73
  br i1 %exitcond53.not, label %for.cond151, label %for.inc147

for.inc147:                                       ; preds = %for.cond136
  %arrayidx141 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv48
  %15 = load i32, ptr %arrayidx141, align 16, !tbaa !5, !invariant.load !13
  %16 = add nsw i64 %indvars.iv48, -1
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %16
  store i32 %15, ptr %arrayidx145, align 16, !tbaa !5
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond136, !llvm.loop !22

for.cond151:                                      ; preds = %for.cond136, %for.inc162
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc162 ], [ 2, %for.cond136 ]
  %exitcond59.not = icmp eq i64 %indvars.iv54, %indvars.iv73
  br i1 %exitcond59.not, label %for.cond166, label %for.inc162

for.inc162:                                       ; preds = %for.cond151
  %arrayidx157 = getelementptr inbounds nuw [100 x i32], ptr %temp, i64 0, i64 %indvars.iv54
  %17 = load i32, ptr %arrayidx157, align 4, !tbaa !5, !invariant.load !13
  %18 = add nsw i64 %indvars.iv54, -1
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %18
  store i32 %17, ptr %arrayidx161, align 4, !tbaa !5
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond151, !llvm.loop !23

for.cond166:                                      ; preds = %for.cond151, %for.inc188
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc188 ], [ 2, %for.cond151 ]
  %exitcond71.not = icmp eq i64 %indvars.iv66, %indvars.iv73
  br i1 %exitcond71.not, label %for.inc191, label %for.cond171.preheader

for.cond171.preheader:                            ; preds = %for.cond166
  %19 = add nsw i64 %indvars.iv66, -1
  br label %for.cond171

for.cond171:                                      ; preds = %for.cond171.preheader, %for.inc185
  %indvars.iv60 = phi i64 [ 2, %for.cond171.preheader ], [ %indvars.iv.next61, %for.inc185 ]
  %exitcond65.not = icmp eq i64 %indvars.iv60, %indvars.iv73
  br i1 %exitcond65.not, label %for.inc188, label %for.inc185

for.inc185:                                       ; preds = %for.cond171
  %arrayidx178 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv66, i64 %indvars.iv60
  %20 = load i32, ptr %arrayidx178, align 4, !tbaa !5, !invariant.load !13
  %21 = add nsw i64 %indvars.iv60, -1
  %arrayidx184 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %19, i64 %21
  store i32 %20, ptr %arrayidx184, align 4, !tbaa !5
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond171, !llvm.loop !24

for.inc188:                                       ; preds = %for.cond171
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond166, !llvm.loop !25

for.inc191:                                       ; preds = %for.cond166
  %add = add nsw i32 %13, %s.0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br label %for.cond15, !llvm.loop !26

for.inc195:                                       ; preds = %for.cond15
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc196 = add nuw nsw i32 %z.0, 1
  br label %for.cond, !llvm.loop !27

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n0) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nofree willreturn }
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
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
