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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n0) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %temp) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  %arrayidx110 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup17, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.cond.cleanup17 ]
  %z.0 = phi i32 [ 0, %entry ], [ %inc196, %for.cond.cleanup17 ]
  %0 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %z.0, %0
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %temp) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n0) #6
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup7
  %1 = phi i32 [ %4, %for.cond.cleanup7 ], [ %0, %for.cond ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.cond.cleanup7 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv71, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %4 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond1, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv71, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n0, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.cond.cleanup168
  %indvars.iv137 = phi i64 [ %3, %for.cond15.preheader ], [ %indvars.iv.next138, %for.cond.cleanup168 ]
  %s.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.cond.cleanup168 ]
  %min.1 = phi i32 [ %min.0, %for.cond15.preheader ], [ %min.5, %for.cond.cleanup168 ]
  %6 = trunc nuw i64 %indvars.iv137 to i32
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.cond19, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %vtable.i = load ptr, ptr %call193, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call193, i64 %vbase.offset.i
  %call.i69 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call193, i8 noundef signext %call.i69)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc196 = add nuw nsw i32 %z.0, 1
  br label %for.cond, !llvm.loop !15

for.cond19:                                       ; preds = %for.cond15, %for.cond.cleanup47
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.cond.cleanup47 ], [ 0, %for.cond15 ]
  %min.2 = phi i32 [ %min.3, %for.cond.cleanup47 ], [ %min.1, %for.cond15 ]
  %exitcond86.not = icmp eq i64 %indvars.iv82, %indvars.iv137
  br i1 %exitcond86.not, label %for.cond60, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond19
  %arrayidx29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82
  br label %for.cond23

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc41
  %indvars.iv74 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next75, %for.inc41 ]
  %min.3 = phi i32 [ %min.2, %for.cond23.preheader ], [ %min.4, %for.inc41 ]
  %exitcond.not = icmp eq i64 %indvars.iv74, %indvars.iv137
  br i1 %exitcond.not, label %for.cond45, label %for.body26

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i64 %indvars.iv74, 0
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body26
  %7 = load i32, ptr %arrayidx29, align 16, !tbaa !5
  br label %for.inc41

if.else:                                          ; preds = %for.body26
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv74
  %8 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %.min.3 = call i32 @llvm.smin.i32(i32 %min.3, i32 %8)
  br label %for.inc41

for.inc41:                                        ; preds = %if.then, %if.else
  %min.4 = phi i32 [ %7, %if.then ], [ %.min.3, %if.else ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond23, !llvm.loop !16

for.cond45:                                       ; preds = %for.cond23, %for.body48
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.body48 ], [ 0, %for.cond23 ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %indvars.iv137
  br i1 %exitcond81.not, label %for.cond.cleanup47, label %for.body48

for.cond.cleanup47:                               ; preds = %for.cond45
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond19, !llvm.loop !17

for.body48:                                       ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv77
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %min.3
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond45, !llvm.loop !18

for.cond60:                                       ; preds = %for.cond19, %for.cond.cleanup96
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.cond.cleanup96 ], [ 0, %for.cond19 ]
  %min.5 = phi i32 [ %min.6, %for.cond.cleanup96 ], [ %min.2, %for.cond19 ]
  %exitcond101.not = icmp eq i64 %indvars.iv97, %indvars.iv137
  br i1 %exitcond101.not, label %for.cond.cleanup62, label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.cond60
  %arrayidx74 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv97
  br label %for.cond65

for.cond.cleanup62:                               ; preds = %for.cond60
  %10 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond112

for.cond65:                                       ; preds = %for.cond65.preheader, %for.inc90
  %indvars.iv87 = phi i64 [ 0, %for.cond65.preheader ], [ %indvars.iv.next88, %for.inc90 ]
  %min.6 = phi i32 [ %min.5, %for.cond65.preheader ], [ %min.7, %for.inc90 ]
  %exitcond91.not = icmp eq i64 %indvars.iv87, %indvars.iv137
  br i1 %exitcond91.not, label %for.cond94, label %for.body68

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i64 %indvars.iv87, 0
  br i1 %cmp69, label %if.then70, label %if.else75

if.then70:                                        ; preds = %for.body68
  %11 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.inc90

if.else75:                                        ; preds = %for.body68
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv87, i64 %indvars.iv97
  %12 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %.min.6 = call i32 @llvm.smin.i32(i32 %min.6, i32 %12)
  br label %for.inc90

for.inc90:                                        ; preds = %if.then70, %if.else75
  %min.7 = phi i32 [ %11, %if.then70 ], [ %.min.6, %if.else75 ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond65, !llvm.loop !19

for.cond94:                                       ; preds = %for.cond65, %for.body97
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.body97 ], [ 0, %for.cond65 ]
  %exitcond96.not = icmp eq i64 %indvars.iv92, %indvars.iv137
  br i1 %exitcond96.not, label %for.cond.cleanup96, label %for.body97

for.cond.cleanup96:                               ; preds = %for.cond94
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br label %for.cond60, !llvm.loop !20

for.body97:                                       ; preds = %for.cond94
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv92, i64 %indvars.iv97
  %13 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %sub102 = sub nsw i32 %13, %min.6
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond94, !llvm.loop !21

for.cond112:                                      ; preds = %for.cond.cleanup119, %for.cond.cleanup62
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.cond.cleanup119 ], [ 0, %for.cond.cleanup62 ]
  %exitcond111.not = icmp eq i64 %indvars.iv107, %indvars.iv137
  br i1 %exitcond111.not, label %for.cond136, label %for.cond117

for.cond117:                                      ; preds = %for.cond112, %for.body120
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body120 ], [ 0, %for.cond112 ]
  %exitcond106.not = icmp eq i64 %indvars.iv102, %indvars.iv137
  br i1 %exitcond106.not, label %for.cond.cleanup119, label %for.body120

for.cond.cleanup119:                              ; preds = %for.cond117
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %for.cond112, !llvm.loop !22

for.body120:                                      ; preds = %for.cond117
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv107, i64 %indvars.iv102
  %14 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx128 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv107, i64 %indvars.iv102
  store i32 %14, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %for.cond117, !llvm.loop !23

for.cond136:                                      ; preds = %for.cond112, %for.body139
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.body139 ], [ 2, %for.cond112 ]
  %exitcond117.not = icmp eq i64 %indvars.iv112, %indvars.iv137
  br i1 %exitcond117.not, label %for.cond151, label %for.body139

for.body139:                                      ; preds = %for.cond136
  %arrayidx141 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv112
  %15 = load i32, ptr %arrayidx141, align 16, !tbaa !5
  %16 = add nsw i64 %indvars.iv112, -1
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %16
  store i32 %15, ptr %arrayidx145, align 16, !tbaa !5
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond136, !llvm.loop !24

for.cond151:                                      ; preds = %for.cond136, %for.body154
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.body154 ], [ 2, %for.cond136 ]
  %exitcond123.not = icmp eq i64 %indvars.iv118, %indvars.iv137
  br i1 %exitcond123.not, label %for.cond166, label %for.body154

for.body154:                                      ; preds = %for.cond151
  %arrayidx157 = getelementptr inbounds nuw [100 x i32], ptr %temp, i64 0, i64 %indvars.iv118
  %17 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %18 = add nsw i64 %indvars.iv118, -1
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %18
  store i32 %17, ptr %arrayidx161, align 4, !tbaa !5
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond151, !llvm.loop !25

for.cond166:                                      ; preds = %for.cond151, %for.cond.cleanup173
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.cond.cleanup173 ], [ 2, %for.cond151 ]
  %exitcond135.not = icmp eq i64 %indvars.iv130, %indvars.iv137
  br i1 %exitcond135.not, label %for.cond.cleanup168, label %for.cond171.preheader

for.cond171.preheader:                            ; preds = %for.cond166
  %19 = add nsw i64 %indvars.iv130, -1
  br label %for.cond171

for.cond.cleanup168:                              ; preds = %for.cond166
  %add = add nsw i32 %10, %s.0
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, -1
  br label %for.cond15, !llvm.loop !26

for.cond171:                                      ; preds = %for.cond171.preheader, %for.body174
  %indvars.iv124 = phi i64 [ 2, %for.cond171.preheader ], [ %indvars.iv.next125, %for.body174 ]
  %exitcond129.not = icmp eq i64 %indvars.iv124, %indvars.iv137
  br i1 %exitcond129.not, label %for.cond.cleanup173, label %for.body174

for.cond.cleanup173:                              ; preds = %for.cond171
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  br label %for.cond166, !llvm.loop !27

for.body174:                                      ; preds = %for.cond171
  %arrayidx178 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv130, i64 %indvars.iv124
  %20 = load i32, ptr %arrayidx178, align 4, !tbaa !5
  %21 = add nsw i64 %indvars.iv124, -1
  %arrayidx184 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %19, i64 %21
  store i32 %20, ptr %arrayidx184, align 4, !tbaa !5
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  br label %for.cond171, !llvm.loop !28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
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
!28 = distinct !{!28, !10, !11}
