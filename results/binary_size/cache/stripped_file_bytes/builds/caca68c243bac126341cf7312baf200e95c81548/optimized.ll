; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw8ovaago.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: write) uwtable
define dso_local noundef i32 @_Z4xiaoi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end206, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %for.end206 ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub207, %for.end206 ]
  %cmp = icmp eq i32 %n.tr, 2
  br i1 %cmp, label %for.cond, label %if.end81

for.cond:                                         ; preds = %tailrecurse, %for.inc34
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.inc34 ], [ 0, %tailrecurse ]
  %exitcond153.not = icmp eq i64 %indvars.iv150, 2
  br i1 %exitcond153.not, label %for.cond37, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv150
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.body7 ], [ 0, %for.body ]
  %spec.store.select102 = phi i32 [ %spec.store.select, %for.body7 ], [ %0, %for.body ]
  %exitcond145.not = icmp eq i64 %indvars.iv142, 2
  br i1 %exitcond145.not, label %for.cond22, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv150, i64 %indvars.iv142
  %1 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %spec.store.select102)
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  br label %for.cond5, !llvm.loop !9

for.cond22:                                       ; preds = %for.cond5, %for.body24
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.body24 ], [ 0, %for.cond5 ]
  %exitcond149.not = icmp eq i64 %indvars.iv146, 2
  br i1 %exitcond149.not, label %for.inc34, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx30 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv150, i64 %indvars.iv146
  %2 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %spec.store.select102
  store i32 %sub, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  br label %for.cond22, !llvm.loop !12

for.inc34:                                        ; preds = %for.cond22
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  br label %for.cond, !llvm.loop !13

for.cond37:                                       ; preds = %for.cond, %for.inc78
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %for.inc78 ], [ 0, %for.cond ]
  %exitcond165.not = icmp eq i64 %indvars.iv162, 2
  br i1 %exitcond165.not, label %for.end80, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv162
  %3 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  br label %for.cond44

for.cond44:                                       ; preds = %for.body46, %for.body39
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %for.body46 ], [ 0, %for.body39 ]
  %spec.store.select97103 = phi i32 [ %spec.store.select97, %for.body46 ], [ %3, %for.body39 ]
  %exitcond157.not = icmp eq i64 %indvars.iv154, 2
  br i1 %exitcond157.not, label %for.cond65, label %for.body46

for.body46:                                       ; preds = %for.cond44
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv154, i64 %indvars.iv162
  %4 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %spec.store.select97 = tail call i32 @llvm.smin.i32(i32 %4, i32 %spec.store.select97103)
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  br label %for.cond44, !llvm.loop !14

for.cond65:                                       ; preds = %for.cond44, %for.body67
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %for.body67 ], [ 0, %for.cond44 ]
  %exitcond161.not = icmp eq i64 %indvars.iv158, 2
  br i1 %exitcond161.not, label %for.inc78, label %for.body67

for.body67:                                       ; preds = %for.cond65
  %arrayidx73 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv158, i64 %indvars.iv162
  %5 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %sub74 = sub nsw i32 %5, %spec.store.select97103
  store i32 %sub74, ptr %arrayidx73, align 4, !tbaa !5
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  br label %for.cond65, !llvm.loop !15

for.inc78:                                        ; preds = %for.cond65
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  br label %for.cond37, !llvm.loop !16

for.end80:                                        ; preds = %for.cond37
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  %accumulator.ret.tr = add nsw i32 %accumulator.tr, %6
  ret i32 %accumulator.ret.tr

if.end81:                                         ; preds = %tailrecurse
  %cmp82 = icmp sgt i32 %n.tr, 1
  tail call void @llvm.assume(i1 %cmp82)
  %wide.trip.count113 = zext nneg i32 %n.tr to i64
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc126, %if.end81
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.inc126 ], [ 0, %if.end81 ]
  %exitcond114.not = icmp eq i64 %indvars.iv110, %wide.trip.count113
  br i1 %exitcond114.not, label %for.cond129, label %for.body86

for.body86:                                       ; preds = %for.cond84
  %arrayidx88 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv110
  %7 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.body94, %for.body86
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body94 ], [ 0, %for.body86 ]
  %spec.store.select98100 = phi i32 [ %spec.store.select98, %for.body94 ], [ %7, %for.body86 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count113
  br i1 %exitcond.not, label %for.cond113, label %for.body94

for.body94:                                       ; preds = %for.cond92
  %arrayidx98 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv110, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %spec.store.select98 = tail call i32 @llvm.smin.i32(i32 %8, i32 %spec.store.select98100)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond92, !llvm.loop !17

for.cond113:                                      ; preds = %for.cond92, %for.body115
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body115 ], [ 0, %for.cond92 ]
  %exitcond109.not = icmp eq i64 %indvars.iv105, %wide.trip.count113
  br i1 %exitcond109.not, label %for.inc126, label %for.body115

for.body115:                                      ; preds = %for.cond113
  %arrayidx121 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv110, i64 %indvars.iv105
  %9 = load i32, ptr %arrayidx121, align 4, !tbaa !5
  %sub122 = sub nsw i32 %9, %spec.store.select98100
  store i32 %sub122, ptr %arrayidx121, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond113, !llvm.loop !18

for.inc126:                                       ; preds = %for.cond113
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %for.cond84, !llvm.loop !19

for.cond129:                                      ; preds = %for.cond84, %for.inc170
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.inc170 ], [ 0, %for.cond84 ]
  %exitcond129.not = icmp eq i64 %indvars.iv125, %wide.trip.count113
  br i1 %exitcond129.not, label %for.end172, label %for.body131

for.body131:                                      ; preds = %for.cond129
  %arrayidx133 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv125
  %10 = load i32, ptr %arrayidx133, align 4, !tbaa !5
  br label %for.cond136

for.cond136:                                      ; preds = %for.body138, %for.body131
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body138 ], [ 0, %for.body131 ]
  %spec.store.select99101 = phi i32 [ %spec.store.select99, %for.body138 ], [ %10, %for.body131 ]
  %exitcond119.not = icmp eq i64 %indvars.iv115, %wide.trip.count113
  br i1 %exitcond119.not, label %for.cond157, label %for.body138

for.body138:                                      ; preds = %for.cond136
  %arrayidx142 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv115, i64 %indvars.iv125
  %11 = load i32, ptr %arrayidx142, align 4, !tbaa !5
  %spec.store.select99 = tail call i32 @llvm.smin.i32(i32 %11, i32 %spec.store.select99101)
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %for.cond136, !llvm.loop !20

for.cond157:                                      ; preds = %for.cond136, %for.body159
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %for.body159 ], [ 0, %for.cond136 ]
  %exitcond124.not = icmp eq i64 %indvars.iv120, %wide.trip.count113
  br i1 %exitcond124.not, label %for.inc170, label %for.body159

for.body159:                                      ; preds = %for.cond157
  %arrayidx165 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv120, i64 %indvars.iv125
  %12 = load i32, ptr %arrayidx165, align 4, !tbaa !5
  %sub166 = sub nsw i32 %12, %spec.store.select99101
  store i32 %sub166, ptr %arrayidx165, align 4, !tbaa !5
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  br label %for.cond157, !llvm.loop !21

for.inc170:                                       ; preds = %for.cond157
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  br label %for.cond129, !llvm.loop !22

for.end172:                                       ; preds = %for.cond129
  %13 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc204, %for.end172
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.inc204 ], [ 2, %for.end172 ]
  %exitcond141.not = icmp eq i64 %indvars.iv136, %wide.trip.count113
  br i1 %exitcond141.not, label %for.end206, label %for.body175

for.body175:                                      ; preds = %for.cond173
  %arrayidx177 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv136
  %14 = load i32, ptr %arrayidx177, align 4, !tbaa !5
  %15 = add nsw i64 %indvars.iv136, -1
  %arrayidx181 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %15
  store i32 %14, ptr %arrayidx181, align 4, !tbaa !5
  %arrayidx184 = getelementptr inbounds nuw [101 x i32], ptr @a, i64 0, i64 %indvars.iv136
  %16 = load i32, ptr %arrayidx184, align 4, !tbaa !5
  %arrayidx187 = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %15
  store i32 %16, ptr %arrayidx187, align 4, !tbaa !5
  br label %for.cond188

for.cond188:                                      ; preds = %for.body190, %for.body175
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.body190 ], [ 2, %for.body175 ]
  %exitcond135.not = icmp eq i64 %indvars.iv130, %wide.trip.count113
  br i1 %exitcond135.not, label %for.inc204, label %for.body190

for.body190:                                      ; preds = %for.cond188
  %arrayidx194 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv136, i64 %indvars.iv130
  %17 = load i32, ptr %arrayidx194, align 4, !tbaa !5
  %18 = add nsw i64 %indvars.iv130, -1
  %arrayidx200 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %15, i64 %18
  store i32 %17, ptr %arrayidx200, align 4, !tbaa !5
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  br label %for.cond188, !llvm.loop !23

for.inc204:                                       ; preds = %for.cond188
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %for.cond173, !llvm.loop !24

for.end206:                                       ; preds = %for.cond173
  %sub207 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %accumulator.tr, %13
  br label %tailrecurse
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  %ans = alloca [101 x i32], align 16
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 404, ptr nonnull %ans) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(404) %ans, i8 0, i64 404, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.end12 ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv15, %1
  br i1 %cmp.not, label %for.cond19, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %2 = phi i32 [ %4, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc10 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv12, %3
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %4 = phi i32 [ %.pre, %for.body6 ], [ %2, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !25

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond1, !llvm.loop !26

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %2)
  %arrayidx15 = getelementptr inbounds nuw [101 x i32], ptr %ans, i64 0, i64 %indvars.iv15
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond, !llvm.loop !27

for.cond19:                                       ; preds = %for.cond, %for.body21
  %6 = phi i32 [ %.pre21, %for.body21 ], [ %0, %for.cond ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body21 ], [ 1, %for.cond ]
  %7 = sext i32 %6 to i64
  %cmp20.not = icmp sgt i64 %indvars.iv18, %7
  br i1 %cmp20.not, label %for.end28, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [101 x i32], ptr %ans, i64 0, i64 %indvars.iv18
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !28
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %call.i10 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %call.i10)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %.pre21 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !30

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #8
  %call29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %f)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #8
  call void @llvm.lifetime.end.p0(i64 404, ptr nonnull %ans) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = !{!29, !29, i64 0}
!29 = !{!"vtable pointer", !8, i64 0}
!30 = distinct !{!30, !10, !11}
